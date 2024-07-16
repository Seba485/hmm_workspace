#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from rosneuro_msgs.msg import*
from nav_msgs.msg import Odometry
from actionlib_msgs.msg import GoalStatusArray
from hmm_sim.msg import action_status
import numpy as np
import tf
import tf.transformations
import math

class neuro_controller_node:

    def __init__(self):
        rospy.init_node('neuro_controller')
        rospy.sleep(3)

        #get param
        self.mode = rospy.get_param("~modality")
        self.odom_topic = rospy.get_param("~odom_topic") #/odometry/filtered
        self.move_base_status_topic = rospy.get_param("~move_base_status") #move_base/status
        self.hard_class_topic = rospy.get_param("~hard_class_topic") #bar_feedback/hard_class
        self.pub_topic = rospy.get_param("~controller_topic") #geometry_msgs/PoseStamped 

        #initialization
        self.wc_pos = np.array([0, 0, 0])
        self.wc_orientation = 0 #rad around z 0 aligned with y
        self.angle_correction = 0.082 #rad

        turn_step = np.array([1, 2])
        self.turn_angle = math.asin(turn_step[1]/np.linalg.norm(turn_step)) #positive for left and negative for right
        self.turn_mode = np.linalg.norm(turn_step)
        self.forward_step = 2

        self.goal_reached = 0
    
        #subpcriber and publisher
        self.pub_status = rospy.Publisher('/robot_status', action_status, queue_size=1)
        self.pub_cmd = rospy.Publisher(self.pub_topic, PoseStamped, queue_size=1)

        self.sub_odom = rospy.Subscriber(self.odom_topic, Odometry, self.odom_update)
        self.sub_move_base_status = rospy.Subscriber(self.move_base_status_topic, GoalStatusArray, self.move_base_status)
        self.sub_hard_class = rospy.Subscriber(self.hard_class_topic, NeuroOutput, self.on_receive_data)

        rospy.loginfo('Neuro controller up')

    def odom_update(self, msg: Odometry):
        quternion_list = [msg.pose.pose.orientation.x, msg.pose.pose.orientation.y, msg.pose.pose.orientation.z, msg.pose.pose.orientation.w]
        self.wc_orientation = tf.transformations.euler_from_quaternion(quternion_list)[2] #rad respect to x (roll pitch -> yaw <-)
        self.wc_pos = np.array([msg.pose.pose.position.x, msg.pose.pose.position.y, msg.pose.pose.position.z])
    
    def move_base_status(self, msg: GoalStatusArray):
        """ PENDING (0): The goal is waiting to be processed.
        ACTIVE (1): The goal is currently being processed.
        PREEMPTED (2): The goal was preempted.
        SUCCEEDED (3): The goal was achieved successfully.
        ABORTED (4): The goal was aborted.
        REJECTED (5): The goal was rejected.
        PREEMPTING (6): The goal is preempting another goal.
        RECALLING (7): The goal is being recalled.
        RECALLED (8): The goal was recalled.
        LOST (9): The goal was lost. """
        if len(msg.status_list)!=0 :
            status = msg.status_list[-1].status #the last status
            if status==3:
                self.goal_reached = 1
            elif status==4 or status==5 or status==2:
                rospy.signal_shutdown('Command failed')


    def polar_to_xy(self, mode, angle):
        #in order to give the goal in x,y,z terms we need to parse the the polar coordinates from the actual position and orientation of the wc
        angle = angle + self.wc_orientation
        x = mode*math.cos(angle) + self.wc_pos[0] 
        y = mode*math.sin(angle) + self.wc_pos[1]
        return (x, y)

    def on_receive_data(self, msg: NeuroOutput):
        hard_pp = msg.hardpredict.data  #class order has alredy been set in bar_feedback node

        cmd = PoseStamped()
        cmd.header.stamp = rospy.Time.now()
        cmd.header.frame_id = "wcias_odom"

        if hard_pp[0]==1: #sx (1 forward, 2 on the left)
            
            x, y = self.polar_to_xy(self.turn_mode, self.turn_angle)
            cmd.pose.position.x = x
            cmd.pose.position.y = y
            cmd.pose.position.z = 0

            quaternion = tf.transformations.quaternion_from_euler(0, 0, self.wc_orientation + math.pi/2 - self.angle_correction)
            cmd.pose.orientation.x = quaternion[0]
            cmd.pose.orientation.y = quaternion[1]
            cmd.pose.orientation.z = quaternion[2]
            cmd.pose.orientation.w = quaternion[3]

            self.pub_cmd.publish(cmd)

            self.wait_until_reached()

        elif hard_pp[1]==1: #rest

            x, y = self.polar_to_xy(self.forward_step, 0)
            cmd.pose.position.x = x
            cmd.pose.position.y = y
            cmd.pose.position.z = 0

            quaternion = tf.transformations.quaternion_from_euler(0, 0, self.wc_orientation)
            cmd.pose.orientation.x = quaternion[0]
            cmd.pose.orientation.y = quaternion[1]
            cmd.pose.orientation.z = quaternion[2]
            cmd.pose.orientation.w = quaternion[3]

            self.pub_cmd.publish(cmd)

            self.wait_until_reached()

            
        elif hard_pp[2]==1: #dx

            x, y = self.polar_to_xy(self.turn_mode, -self.turn_angle)
            cmd.pose.position.x = x
            cmd.pose.position.y = y
            cmd.pose.position.z = 0

            quaternion = tf.transformations.quaternion_from_euler(0, 0, self.wc_orientation - math.pi/2 + self.angle_correction)
            cmd.pose.orientation.x = quaternion[0]
            cmd.pose.orientation.y = quaternion[1]
            cmd.pose.orientation.z = quaternion[2]
            cmd.pose.orientation.w = quaternion[3]

            self.pub_cmd.publish(cmd)
            
            self.wait_until_reached()

    def wait_until_reached(self):
        action_flag = action_status()
        action_flag.data.data = True
        self.pub_status.publish(action_flag)

        self.goal_reached = 0 #so that it enter the cycle

        if self.mode=="evaluation": #for the discrete driving
            while self.goal_reached==0:
                self.pub_status.publish(action_flag)
                pass
        else: #for the countinuous driving
            start_time = rospy.get_time()
            while self.goal_reached==0:
                self.pub_status.publish(action_flag)
                if (rospy.get_time()-start_time)>3:
                    break

        action_flag = action_status()
        action_flag.data.data = False
        self.pub_status.publish(action_flag)

    
    def run(self):
        rospy.spin()

if __name__ == '__main__':

    node = neuro_controller_node()
    node.run()
        







