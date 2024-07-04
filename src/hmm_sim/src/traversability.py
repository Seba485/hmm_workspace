#!/usr/bin/env python3
import rospy
import numpy as np
import math
from hmm_sim.msg import traversability_output #inport the custom message
from sensor_msgs.msg import LaserScan 


class traversability_node:
    def __init__(self):
        rospy.init_node('traversability')

        #get param
        self.mode = rospy.get_param("~traversability_mode")
        self.f = rospy.get_param("~f")
        self.right_lidar_topic = rospy.get_param("~right_lidar_topic")
        self.left_lidar_topic = rospy.get_param("~left_lidar_topic")
        self.min_distance = rospy.get_param("~min_distance")

        
        #check on param
        if(self.mode!="real" and self.mode!="null"):
            rospy.logerr("traversability mode must be 'real' or 'null'")
            rospy.signal_shutdown()

        #initialization
        self.traversability_matrix = np.ones((3,3))*1/9
        self.both_lidar_up = np.zeros(2)

        #publisher
        self.pub = rospy.Publisher('traversability_output_topic', traversability_output, queue_size=10)

        #subscribers
        if self.mode=="real":
            self.sub_right = rospy.Subscriber(self.right_lidar_topic, LaserScan, self.right_lidar_update)
            self.sub_left = rospy.Subscriber(self.left_lidar_topic, LaserScan, self.left_lidar_update)
        else:
            self.traversability_static_publish()
            #no subcriber needed
            
        rospy.loginfo('Traversability up')

    def traversability_static_publish(self):
        msg = traversability_output()
        traversability_vector = self.traversability_matrix.reshape(9)
        msg.T.data = traversability_vector #once it is publishe it is parsed as a tuple

        rate = rospy.Rate(self.f)

        while(not rospy.is_shutdown()):
            #rospy.loginfo('Traversability_matryx')
            rospy.loginfo(str(self.traversability_matrix))

            self.pub.publish(msg) #publish the message on the topic
            rate.sleep()
    
    def right_lidar_update(self, msg: LaserScan):
        if self.both_lidar_up[0]==0:
            self.right_angle = np.arange(msg.angle_min, msg.angle_max, msg.angle_increment)
            self.right_min_angle = msg.angle_min
            self.right_ingrment = msg.angle_increment
            self.right_range_max = msg.range_max
            self.both_lidar_up[0] = 1

        self.right_lidar = np.array(msg.ranges) #distaces

        if np.sum(self.both_lidar_up)==2:
            self.matrix_build()
    
    def left_lidar_update(self, msg: LaserScan):
        if self.both_lidar_up[1]==0:
            self.left_angle = np.arange(msg.angle_min, msg.angle_max, msg.angle_increment)
            self.left_min_angle = msg.angle_min
            self.left_ingrment = msg.angle_increment
            self.left_range_max = msg.range_max
            self.both_lidar_up[1] = 1

        self.left_lidar = np.array(msg.ranges) #distaces

        if np.sum(self.both_lidar_up)==2:
            self.matrix_build()
    
    def matrix_build(self):
        #for this step the 2 lidar sensors must have the same angle step and an overlapped field
        
        #right view -pi -> 1.047 (60°) with an increment of 0.011667
        rlb = 18*math.pi/180 
        right_low_idx = math.floor(abs(rlb)/self.right_ingrment)
        rub = 125*math.pi/180
        right_upper_idx = math.floor(abs(rub)/self.right_ingrment)
        right_view = self.right_lidar[right_low_idx:right_upper_idx]

        right_valid = right_view[right_view<math.inf]
        if right_valid.size!=0:
            right_mean = sum(right_valid)/right_valid.size
        else:
            right_mean = self.right_range_max #direction open

        #right view -1.047 (60°) -> pi with an increment of 0.011667
        llb = (55)*math.pi/180 + abs(self.left_min_angle)
        left_low_idx = math.floor(abs(llb)/self.left_ingrment)
        lub = (162)*math.pi/180 + abs(self.left_min_angle)
        left_upper_idx = math.floor(abs(lub)/self.left_ingrment)
        left_view = self.left_lidar[left_low_idx:left_upper_idx]

        left_valid = left_view[left_view<math.inf]
        if left_valid.size!=0:
            left_mean = sum(left_valid)/left_valid.size
        else:
            left_mean = self.left_range_max #direction open

        #central view -1.047(60°) -> 1.047 circa
        right_central_view = self.right_lidar[right_upper_idx+1:]
        left_central_view = self.left_lidar[:left_low_idx-1]
        central_view_len = min(left_central_view.size,right_central_view.size)
        front_view = (right_central_view[:central_view_len] + left_central_view[:central_view_len])/2

        front_valid = front_view[front_view<math.inf]
        if front_valid.size!=0:
            front_mean = sum(front_valid)/front_valid.size
        else:
            front_mean = (self.left_range_max+self.right_range_max)/2 #direction open

        #debuff
        prob_vector = np.array([left_mean, front_mean, right_mean])
        prob_vector[np.where(prob_vector<=self.min_distance)] = 0

        #matrix
        left_vect = prob_vector * np.array([1.4, 1, 1])
        left_vect = left_vect/sum(left_vect) #first row

        front_vect = prob_vector
        front_vect = front_vect/sum(front_vect) #second row

        right_vect = prob_vector * np.array([1, 1, 1.4])
        right_vect = right_vect/sum(right_vect) #third row

        self.traversability_matrix = np.vstack((left_vect,front_vect,right_vect))

        msg = traversability_output()
        traversability_vector = self.traversability_matrix.reshape(9)
        msg.T.data = traversability_vector #once it is publishe it is parsed as a tuple

        self.pub.publish(msg) #publish the message on the topic
        
        rospy.loginfo(str(self.traversability_matrix))
  
    def run(self):
        rospy.spin() #keep the node alive


 
if __name__ == '__main__':

    node = traversability_node()
    node.run()   
