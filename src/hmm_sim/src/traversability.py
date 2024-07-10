#!/usr/bin/env python3
import rospy
import numpy as np
import math
from hmm_sim.msg import traversability_output #inport the custom message
from nav_msgs.msg import Odometry
from sensor_msgs.msg import LaserScan 
import tf

from occupancy_grid_python import OccupancyGridManager

class traversability_node:
    def __init__(self):
        rospy.init_node('traversability')
        rospy.loginfo('Traversability up')

        #get param
        self.mode = rospy.get_param("~traversability_mode")
        self.f = rospy.get_param("~f")
        self.depth = rospy.get_param("~max_distance")
        self.min_distance = rospy.get_param("~min_distance")
        self.map_topic = rospy.get_param("~costmap_2d_topic")
        self.right_lidar_topic = rospy.get_param("~right_lidar_topic")
        self.left_lidar_topic = rospy.get_param("~left_lidar_topic")

        #check on param
        if(self.mode!="real" and self.mode!="null"):
            rospy.logerr("traversability mode must be 'real' or 'null'")
            rospy.signal_shutdown()

        #initialization
        self.traversability_matrix = np.ones((3,3))*1/9
        self.orientation = 0.0

        self.front_angle = np.array([-30*math.pi/180, 30*math.pi/180])
        self.right_angle = np.array([-160*math.pi/180, -30*math.pi/180])
        self.left_angle = np.array([30*math.pi/180, 160*math.pi/180])

        self.direction_denied = np.ones(3)
        
    
        #publisher
        self.pub = rospy.Publisher('traversability_output_topic', traversability_output, queue_size=10)

        #subscribers
        if self.mode=="real":
            self.odometry_sub = rospy.Subscriber("/odometry/filtered", Odometry, self.orientation_update)
            self.sub_right = rospy.Subscriber(self.right_lidar_topic, LaserScan, self.right_lidar_update)
            self.sub_left = rospy.Subscriber(self.left_lidar_topic, LaserScan, self.left_lidar_update)

            self.ogm = OccupancyGridManager(self.map_topic, subscribe_to_updates=True)

            self.dist_resolution = self.ogm.resolution
            self.angle_resolution = 0.02
            self.proximity_grid_manipulation()

        else:
            self.traversability_static_publish()
            #no subcriber needed
            
    def orientation_update(self, msg: Odometry):
        quternion_list = [msg.pose.pose.orientation.x, msg.pose.pose.orientation.y, msg.pose.pose.orientation.z, msg.pose.pose.orientation.w]
        self.orientation = tf.transformations.euler_from_quaternion(quternion_list)[2] #rad respect to x

    def right_lidar_update(self, msg: LaserScan):
        start_idx = abs(math.floor((50*math.pi/180+self.right_angle[0]+abs(msg.angle_min))/msg.angle_increment))
        end_idx = abs(math.floor((self.right_angle[1]+abs(msg.angle_min))/msg.angle_increment))
        
        self.direction_denied[2] = 0 if np.sum(np.array(msg.ranges)[start_idx:end_idx+1] <= self.min_distance) >= 10 else 1
        self.direction_denied[1] = 0 if np.sum(np.array(msg.ranges)[end_idx+1:] <= self.min_distance) >= 10 else 1

    def left_lidar_update(self, msg: LaserScan):
        start_idx = abs(math.floor(self.left_angle[0]+abs(msg.angle_min)/msg.angle_increment))
        end_idx = abs(math.floor((self.left_angle[1]+abs(msg.angle_min)-50*math.pi/180)/msg.angle_increment))
        
        self.direction_denied[0] = 0 if np.sum(np.array(msg.ranges)[start_idx:end_idx+1] <= self.min_distance) >= 10 else 1
        self.direction_denied[1] = 0 if np.sum(np.array(msg.ranges)[:start_idx-1] <= self.min_distance) >= 10 else 1
    
    def polar_to_grid_xy(self, mode, angle):
        #mode (distance from the machine) and angle (orientation with the grid x axis) are related to the real word, 
        #while the output is in term of costmap_2d coordinates

        #the grid start at the bottom right corner while the angle is aligned with the y axis, so a positive angle means that 
        #we are pointing to a further position respect to the grid starting pont
        mode = mode/self.dist_resolution
        x = math.floor(mode*math.cos(angle) + self.ogm.width/2) 
        y = math.floor(mode*math.sin(angle) + self.ogm.height/2)
        return (x, y)
    
    def sector_total_occupacy(self, angle_range, max_distance):
        scanned_cell_set = set()

        angle_range = angle_range + self.orientation

        cumulative_occupancy = 0

        angle = angle_range[0]
        while angle<=angle_range[1]:
            dist = 0
            while dist<=max_distance:
                dist += self.dist_resolution
                grid_cell = self.polar_to_grid_xy(dist, angle)
                if not (grid_cell in scanned_cell_set) and self.ogm.is_in_gridmap(grid_cell[0], grid_cell[1]):
                    scanned_cell_set.add(grid_cell)
                    #rospy.loginfo(np.array([grid_cell, self.ogm.get_cost_from_costmap_x_y(grid_cell[0], grid_cell[1])]))
                    cumulative_occupancy += self.ogm.get_cost_from_costmap_x_y(grid_cell[0], grid_cell[1])
                else:
                    pass
            angle += self.angle_resolution
        #rospy.loginfo(cumulative_occupancy)
        
        return cumulative_occupancy/len(scanned_cell_set)



    def proximity_grid_manipulation(self):
        
        rate = rospy.Rate(self.f)

        while(not rospy.is_shutdown()):
            wc_pos_x, wc_pos_y = self.ogm.get_world_x_y(self.ogm.width/2, self.ogm.height/2)

            front_view = self.sector_total_occupacy(self.front_angle,self.depth)
            right_view = self.sector_total_occupacy(self.right_angle,self.depth)
            left_view = self.sector_total_occupacy(self.left_angle,self.depth)

            """ rospy.loginfo(self.ogm.get_world_x_y(0, 0))
            rospy.loginfo(self.ogm.get_world_x_y(0, 199))
            rospy.loginfo(self.ogm.get_world_x_y(199, 0))
            rospy.loginfo(self.ogm.get_world_x_y(199, 199))
            rospy.loginfo(self.ogm.get_world_x_y(102, 135)) """

            prob_vector = np.array([left_view, front_view, right_view])
            
            if np.sum(prob_vector)==0: #all the direction are open
                prob_vector = np.ones(3)*1/3
            else:
                prob_vector = abs(prob_vector - np.sum(prob_vector))

                #put to zero the closed directions
                prob_vector = prob_vector * self.direction_denied

                #normalize the probability vector
                prob_vector = prob_vector/np.sum(prob_vector) if np.sum(prob_vector)!=0 else np.zeros(3)
            
            #matrix
            left_vect = prob_vector * np.array([1.4, 1, 1])
            if sum(left_vect!=0):
                left_vect = left_vect/sum(left_vect) #first row
            else:
                left_vect = np.zeros(3)

            front_vect = prob_vector
            if sum(front_vect!=0):
                front_vect = front_vect/sum(front_vect) #second row
            else:
                front_vect = np.zeros(3)
            
            right_vect = prob_vector * np.array([1, 1, 1.4])
            if sum(right_vect!=0):
                right_vect = right_vect/sum(right_vect) #last row
            else:
                right_vect = np.zeros(3)

            self.traversability_matrix = np.vstack((left_vect,front_vect,right_vect))
            print_vect = np.vstack((np.array(["sx", "c", "dx"]),np.around(self.traversability_matrix,3)))
            rospy.loginfo(str(print_vect))

            msg = traversability_output()
            traversability_vector = self.traversability_matrix.reshape(9)
            msg.T.data = traversability_vector #once it is publishe it is parsed as a tuple
            self.pub.publish(msg)


            rate.sleep()
        
        
        


    def traversability_static_publish(self):
        msg = traversability_output()
        traversability_vector = self.traversability_matrix.reshape(9)
        msg.T.data = traversability_vector #once it is publishe it is parsed as a tuple

        rate = rospy.Rate(self.f)

        while(not rospy.is_shutdown()):
            #rospy.loginfo('Traversability_matryx')
            #rospy.loginfo(str(self.traversability_matrix))

            self.pub.publish(msg) #publish the message on the topic
            rate.sleep()
    
   
  
    def run(self):
        rospy.spin() #keep the node alive


 
if __name__ == '__main__':

    node = traversability_node()
    node.run()  