#!/usr/bin/env python3
import rospy
import numpy as np
from hmm_sim.msg import traversability_output #inport the custom message

if __name__ == '__main__':
    rospy.init_node('traversability')
    rospy.loginfo('Traversability up')

    #publisher has to have the exact name of the topic we want to write on
    pub = rospy.Publisher('traversability_output_topic', traversability_output, queue_size=10)
    # topic name, msg type, buffer

    f = rospy.get_param("~f")
    rate = rospy.Rate(f)

    while not rospy.is_shutdown():
        msg = traversability_output()

        travesability_matrix = np.ones((3,3))*1/3 
        traversability_vector = travesability_matrix.reshape(9)
        msg.T.data = traversability_vector #once it is publishe it is parsed as a tuple

        pub.publish(msg) #publish the message on the topic

        rate.sleep() 