#!/usr/bin/env python3
import rospy
from gazebo_msgs.srv import SpawnModel, DeleteModel
from geometry_msgs.msg import Pose, Quaternion
from nav_msgs.msg import Odometry
from rosneuro_msgs.msg import*
import tf
import tf.transformations
import numpy as np
import random
import math

class obstacle_spawner:

    def __init__(self):
        rospy.init_node('obstacle_spawner')

        #spawn model service
        rospy.wait_for_service('/gazebo/spawn_urdf_model')
        self.spawn_model_proxy = rospy.ServiceProxy('/gazebo/spawn_urdf_model', SpawnModel)

        #delete model service
        rospy.wait_for_service('/gazebo/delete_model')
        self.delete_model_proxy = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)

        #get param
        self.odom_topic = rospy.get_param("~odom_topic") #/odometry/filtered
        self.eval_type = rospy.get_param("~eval_type") 

        #check on param
        if self.eval_type!=1 and self.eval_type!=2:
            rospy.signal_shutdown("eval_type must be 1 or 2")     

        if self.eval_type == 1:
            ob_path = "/home/sebastiano/hmm_workspace/src/hmm_sim/urdf/left_turn.urdf"
            with open(ob_path, "r") as f:
                self.left_xml = f.read()
            ob_path = "/home/sebastiano/hmm_workspace/src/hmm_sim/urdf/right_turn.urdf"
            with open(ob_path, "r") as f:
                self.right_xml = f.read()
            ob_path = "/home/sebastiano/hmm_workspace/src/hmm_sim/urdf/stright_turn.urdf"
            with open(ob_path, "r") as f:
                self.stright_xml = f.read()

            #for the poalr coordinates
            ob_dist = np.array([2.25, 0])
            self.angle = math.asin(ob_dist[1]/np.linalg.norm(ob_dist)) #positive for left and negative for right
            self.dist = np.linalg.norm(ob_dist)
        elif self.eval_type == 2:
            ob_path = "/home/sebastiano/hmm_workspace/src/hmm_sim/urdf/vertical_bar.urdf"
            with open(ob_path, "r") as f:
                self.v_xml = f.read()
            ob_path = "/home/sebastiano/hmm_workspace/src/hmm_sim/urdf/horizontal_bar.urdf"
            with open(ob_path, "r") as f:
                self.h_xml = f.read()

            #for the poalr coordinates
            ob_dist = np.array([2.5, 0])
            self.angle = math.asin(ob_dist[1]/np.linalg.norm(ob_dist)) #positive for left and negative for right
            self.dist = np.linalg.norm(ob_dist)
        

        

        #initialization
        self.wc_quaternion = [0, 0, 0, 1]
        self.wc_orientation = 0 #rad
        self.wc_pos = np.zeros(3)
        self.cue_class_idx = 1
        self.model_name = "obstacle"
        self.obstacle_namespace = "obstacle"

        #subs
        self.sub_odom = rospy.Subscriber(self.odom_topic, Odometry, self.odom_update)
        self.sub_class = rospy.Subscriber("/bar_feedback/cue_class", NeuroOutput, self.cue_class_update)
        self.sub_event = rospy.Subscriber("/events/bus", NeuroEvent, self.on_start_delete_obstacle)

    def odom_update(self, msg: Odometry):
        self.wc_quaternion = [msg.pose.pose.orientation.x, msg.pose.pose.orientation.y, msg.pose.pose.orientation.z, msg.pose.pose.orientation.w]
        self.wc_orientation = tf.transformations.euler_from_quaternion(self.wc_quaternion)[2] #rad respect to x (roll pitch -> yaw <-)
        self.wc_pos = np.array([msg.pose.pose.position.x, msg.pose.pose.position.y, msg.pose.pose.position.z])

    def cue_class_update(self, msg: NeuroOutput):
        self.cue_class_idx = np.where(np.array(msg.hardpredict.data) == 1)[0]
        #cue_class = msg.decoder.classes[slef.cue_class_idx] #classes are already in order due to the hmm node -> sx rest dx
        self.spawn_obstacle()
    
    def spawn_obstacle(self):
        ob_pose = Pose()
        angle = self.angle + self.wc_orientation

        if self.eval_type==1:
        
            if self.cue_class_idx==0: #ref_class --> sx
                ob_pose.position.x = self.dist*math.cos(angle) + self.wc_pos[0] 
                ob_pose.position.y = self.dist*math.sin(angle) + self.wc_pos[1]
                ob_pose.position.z = 0
                ob_pose.orientation = Quaternion(self.wc_quaternion[0],self.wc_quaternion[1],self.wc_quaternion[2],self.wc_quaternion[3])

                self.spawn_model_proxy(self.model_name, self.left_xml, self.obstacle_namespace, ob_pose, "world")

            elif self.cue_class_idx==1: #rest --> stright
                ob_pose.position.x = self.dist*math.cos(angle+math.pi) + self.wc_pos[0] 
                ob_pose.position.y = self.dist*math.sin(angle+math.pi) + self.wc_pos[1]
                ob_pose.position.z = 0
                ob_pose.orientation = Quaternion(self.wc_quaternion[0],self.wc_quaternion[1],self.wc_quaternion[2],self.wc_quaternion[3])

                self.spawn_model_proxy(self.model_name, self.stright_xml, self.obstacle_namespace, ob_pose, "world")
            
            elif self.cue_class_idx==2: #other_class --> dx
                ob_pose.position.x = self.dist*math.cos(angle) + self.wc_pos[0] 
                ob_pose.position.y = self.dist*math.sin(angle) + self.wc_pos[1]
                ob_pose.position.z = 0
                ob_pose.orientation = Quaternion(self.wc_quaternion[0],self.wc_quaternion[1],self.wc_quaternion[2],self.wc_quaternion[3])

                self.spawn_model_proxy(self.model_name, self.right_xml, self.obstacle_namespace, ob_pose, "world")

        elif self.eval_type==2:

            roulet = random.randint(1,2)
            rospy.loginfo(roulet)

            if self.cue_class_idx==0: #ref_class --> sx
                ob_pose.position.z = 0
                ob_pose.orientation = Quaternion(self.wc_quaternion[0],self.wc_quaternion[1],self.wc_quaternion[2],self.wc_quaternion[3])

                if roulet==1:
                    ob_pose.position.x = self.dist*math.cos(angle-math.pi/2) + self.wc_pos[0]
                    ob_pose.position.y = self.dist*math.sin(angle-math.pi/2) + self.wc_pos[1]
                    self.spawn_model_proxy(self.model_name, self.v_xml, self.obstacle_namespace, ob_pose, "world")
                elif roulet==2:
                    ob_pose.position.x = self.dist*math.cos(angle) + self.wc_pos[0]
                    ob_pose.position.y = self.dist*math.sin(angle) + self.wc_pos[1] 
                    self.spawn_model_proxy(self.model_name, self.h_xml, self.obstacle_namespace, ob_pose, "world")

            elif self.cue_class_idx==1: #rest --> stright
                ob_pose.position.z = 0
                ob_pose.orientation = Quaternion(self.wc_quaternion[0],self.wc_quaternion[1],self.wc_quaternion[2],self.wc_quaternion[3])

                if roulet==1:
                    ob_pose.position.x = self.dist*math.cos(angle-math.pi/2) + self.wc_pos[0]
                    ob_pose.position.y = self.dist*math.sin(angle-math.pi/2) + self.wc_pos[1] 
                elif roulet==2:
                    ob_pose.position.x = self.dist*math.cos(angle+math.pi/2) + self.wc_pos[0]
                    ob_pose.position.y = self.dist*math.sin(angle+math.pi/2)  + self.wc_pos[1] 
                
                self.spawn_model_proxy(self.model_name, self.v_xml, self.obstacle_namespace, ob_pose, "world")
            
            elif self.cue_class_idx==2: #other_class --> dx
                ob_pose.position.z = 0
                ob_pose.orientation = Quaternion(self.wc_quaternion[0],self.wc_quaternion[1],self.wc_quaternion[2],self.wc_quaternion[3])

                if roulet==1:
                    ob_pose.position.x = self.dist*math.cos(angle+math.pi/2) + self.wc_pos[0]
                    ob_pose.position.y = self.dist*math.sin(angle+math.pi/2) + self.wc_pos[1] 
                    self.spawn_model_proxy(self.model_name, self.v_xml, self.obstacle_namespace, ob_pose, "world")
                elif roulet==2:
                    ob_pose.position.x = self.dist*math.cos(angle) + self.wc_pos[0]
                    ob_pose.position.y = self.dist*math.sin(angle) + self.wc_pos[1] 
                    self.spawn_model_proxy(self.model_name, self.h_xml, self.obstacle_namespace, ob_pose, "world")
        
        
    def on_start_delete_obstacle(self, msg:NeuroEvent):
        if msg.event == 1: #start
            self.delete_model_proxy(self.model_name)
            self.obstacle_present = False
        

    def run(self):
        rospy.spin()

if __name__ == '__main__':

    node = obstacle_spawner()
    node.run()
