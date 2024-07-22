#!/usr/bin/env python3
import rospy
from rosneuro_msgs.msg import *
from hmm_sim.msg import *
import csv
import os
from time import gmtime, strftime
import numpy as np

class data_recorder:
    def __init__(self):
        # Initialize your node
        rospy.init_node('data_recorder')

        rospy.loginfo("Data_recorder has started")

        #get parameter
        self.root = rospy.get_param("~filepath")
        subject = rospy.get_param("/protocol/subject")
        modality = rospy.get_param("/protocol/modality")
        task = rospy.get_param("/protocol/task")
        extra = rospy.get_param("/protocol/extra")

        date_string = strftime("%Y%m%d_%H%M%S", gmtime())

        self.file_name = "Record."+date_string+"."+modality+"."+subject+"."+task+"."+extra+".csv"

        #ros bag
        # Start the recording process
        bag_file = self.root+"Rosbag."+date_string+"."+modality+"."+subject+"."+task+"."+extra+".bag"
        topics = "/smrbci/neuroprediction /hmm/neuroprediction /integrator/neuroprediction /traversability_output_topic"
        record_command = f'rosbag record -O {bag_file} {topics}'

        os.popen(record_command)
        
        # Subscriber
        self.smr_sub = rospy.Subscriber('/smrbci/neuroprediction', NeuroOutput, self.smr_update)
        """ self.hmm_sub = rospy.Subscriber('/hmm/neuroprediction', NeuroOutput, self.hmm_update)
        self.exp_sub = rospy.Subscriber('/integrator/neuroprediction', NeuroOutput, self.exp_update)
        self.traversability_sub = rospy.Subscriber('/traversability_output_topic', traversability_output, self.traversability_update) """
        
        # Data storage
        self.smr = []
        self.hmm = []
        self.exp = []
        self.traversability = []

        self.second_row_flag = True
        
        # CSV file setup
        self.filepath = self.root+self.file_name
        self.setup_csv()       

    def setup_csv(self):
        file_exists = os.path.isfile(self.filepath)
        with open(self.filepath, mode='a') as file:
            writer = csv.writer(file)
            if not file_exists:
                writer.writerow(['smr_pred', 'hmm_pred', 'exp_output', "taversability"])

    def smr_update(self, msg: NeuroOutput):
        self.smr.append(msg.softpredict.data)
        rospy.loginfo(self.smr)
        self.smr_classes = msg.decoder.classes

    def hmm_update(self, msg: NeuroOutput):
        self.hmm.append(msg.softpredict.data)
        self.hmm_classes = msg.decoder.classes

    def exp_update(self, msg: NeuroOutput):
        self.exp.append(msg.softpredict.data)

    def traversability_update(self, msg: traversability_output):
        self.traversability.append(msg.T.data)

    def save_data(self):
        rospy.spin()
        if rospy.is_shutdown():
            self.write_to_csv()

    def write_to_csv(self):
        with open(self.filepath, mode='a') as file:
            writer = csv.writer(file)
            writer.writerow([self.smr_classes, self.hmm_classes, self.hmm_classes, None])
            for row in range(0,len(self.smr),1):        
                writer.writerow([self.smr[row], self.hmm[row], self.exp[row], self.traversability[row]])

if __name__ == '__main__':
    try:
        node = data_recorder()
        node.save_data()
    except rospy.ROSInterruptException:
        pass