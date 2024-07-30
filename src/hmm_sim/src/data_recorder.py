#!/usr/bin/env python3
import rospy
from rosneuro_msgs.msg import *
from hmm_sim.msg import *
import signal
import os
from time import gmtime, strftime

if __name__ == "__main__":
    # Initialize your node
    rospy.init_node('data_recorder')

    #get parameter
    root = rospy.get_param("~filepath")
    subject = rospy.get_param("/protocol/subject")
    modality = rospy.get_param("/protocol/modality")
    task = rospy.get_param("/protocol/task")
    extra = rospy.get_param("/protocol/extra")

    date_string = strftime("%Y%m%d_%H%M%S", gmtime())

    #ros bag
    # Start the recording process
    bag_file = root+"Rosbag."+date_string+"."+modality+"."+subject+"."+task+"."+extra+".bag"
    topics = "/smrbci/neuroprediction /hmm/neuroprediction /integrator/neuroprediction /traversability_output_topic /bar_feedback/targhethit"
    record_command = f'rosbag record -O {bag_file} {topics}'

    process = os.popen(record_command)

    rospy.loginfo("Data_recorder has started")

    while not rospy.is_shutdown():
        pass

    os.kill(process.pid, signal.SIGINT)  # Send the SIGINT signal to terminate the process
    print("Recording stopped")
