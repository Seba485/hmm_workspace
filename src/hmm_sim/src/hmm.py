#!/usr/bin/env python3
import rospy
import numpy as np
import math
from hmm_sim.msg import *
from rosneuro_msgs.msg import NeuroOutput

def hmm_state(data, state, classes):
    #data
    #state --> string with the name of the state
    overall_lh = 1
    if state==classes[0]: #first class
        A = 10 
        B = 20
        A_1 = 5 
        B_1 = 8
        for x in data:
            overall_lh *= A*math.exp(B*(x-1)) + A_1*math.exp(B_1*(x-1))
    elif state==classes[2]: #second class
        A = 10 
        B = 20
        A_1 = 5 
        B_1 = 8
        for x in data:
            overall_lh *= A*math.exp(-B*x) + A_1*math.exp(-B_1*x)
    elif state==classes[1]: #third class (rest)
        A = 10 
        B = 40
        A_1 = 5 
        B_1 = 5
        for x in data:
            overall_lh *= (A*math.exp(-B*x) + A_1*math.exp(-B_1*x) + A*math.exp(B*(x-1)) + A_1*math.exp(B_1*(x-1)))/2
    else:
        pass

    return overall_lh
    
class hmm_node:
    def __init__(self):
        rospy.init_node('hmm')

        #get param
        self.classes = rospy.get_param("~classes")
        self.classes = self.classes[1:len(self.classes)-1].split(', ')
        self.classes = [int(s) for s in self.classes]
        self.state_name = rospy.get_param("~classes_name")
        self.state_name = self.state_name[1:len(self.state_name)-1].split(', ')

        #self.bf_idx = self.classes.index(771) #both feet index in the probability output of the static classifier
        self.bf_idx = 0 #first class access -> class 1 - class 2 - rest
        
        self.N_state = len(self.classes)

        self.T = np.zeros((3,3))

        self.dt = rospy.get_param("~dt")#s
        self.f = rospy.get_param("~f")#Hz
        self.buffer_len = self.dt*self.f

        #initialization
        self.fifo = np.array([])
        self.posterior_prec = np.ones(self.N_state)*1/self.N_state
        self.fifo_full = False

        #publisher
        self.pub = rospy.Publisher('/hmm/neuroprediction', NeuroOutput, queue_size=10) #to bypass the integrator
        
        #self.sub_pp = rospy.Subscriber('classifier_output_topic',classifier_output,self.fifo_update)
        self.sub_pp = rospy.Subscriber('/smrbci/neuroprediction',NeuroOutput,self.fifo_update)
        self.sub_T = rospy.Subscriber('traversability_output_topic',traversability_output,self.T_update)

    def fifo_update(self,msg: NeuroOutput):
        #pp = np.array(msg.pp_output.data)[0] #related to bothfeet
        pp = np.array(msg.softpredict.data)[self.bf_idx]
        self.fifo = np.append(self.fifo,[pp],axis=0)

        if len(self.fifo)==self.buffer_len: #once the fifo is fully loaded the hmm inference start
            self.fifo_full = True

        if len(self.fifo)>self.buffer_len: #update of the fifo
            self.fifo = np.delete(self.fifo,0,axis=0)
        
        if self.fifo_full:
            self.hmm_inference(msg)
 
    def T_update(self, msg: traversability_output):
        self.T = np.array(msg.T.data).reshape((3,3)) #traversability matrix

    def hmm_inference(self, msg: NeuroOutput):

        #likelihood on the entire buffer
        likelihood_new = list()

        for state in self.classes: 
            likelihood_new.append(hmm_state(self.fifo, state, self.classes))
        
        #normalization
        likelihood_norm = np.empty(self.N_state)
        likelihood_norm = likelihood_new/np.sum(likelihood_new)
            
        #posterior computation
        posterior_new = likelihood_norm*(np.dot(self.posterior_prec,self.T))
        
        #normalization
        posterior_norm = np.empty(self.N_state)
        posterior_norm = posterior_new/np.sum(posterior_new)

        #update
        self.posterior_prec = posterior_norm   

        #output    
        #rospy.loginfo('Probability buffer:')
        #rospy.loginfo(str(self.fifo))
        rospy.loginfo('Traversability matrix:')
        rospy.loginfo(str(self.T))
        rospy.loginfo('HMM output:')
        rospy.loginfo(str(np.round(posterior_norm,4)))
        rospy.loginfo('Class--> '+self.state_name[np.argmax(posterior_norm)])   

        #publish
        msg_pub = NeuroOutput()
        msg_pub.header.stamp = rospy.Time.now()
        msg_pub.neuroheader.seq = msg.neuroheader.seq
        msg_pub.softpredict.data = tuple(posterior_norm)
        hard_pred = np.zeros(len(posterior_norm), dtype=np.int32)
        hard_pred[np.argmax(posterior_norm)] = 1
        msg.hardpredict.data = tuple(hard_pred)


        msg_pub.decoder.classes = tuple(self.classes)
        msg.decoder.path = msg.decoder.path
        msg.decoder.type = msg.decoder.type

        self.pub.publish(msg_pub)
      

    def run(self):
        rospy.spin() #keep the node alive
        
        

if __name__ == '__main__':
    rospy.loginfo('hmm started')

    node = hmm_node()
    node.run()