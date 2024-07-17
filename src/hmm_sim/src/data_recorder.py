#!/usr/bin/env python3
import rospy
from rosneuro_msgs.msg import *
from hmm_sim.msg import *
import csv
import os
from time import gmtime, strftime

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

        self.file_name = "Record_"+date_string+"_"+modality+"_"+subject+"_"+task+"_"+extra+".csv"

        #ros bag
        # Start the recording process
        bag_file = self.root+"Rosbag"+date_string+"_"+modality+"_"+subject+"_"+task+"_"+extra+".bag"
        topics = "/smrbci/neuroprediction /hmm/neuroprediction /integrator/neuroprediction /traversability_output_topic"
        record_command = f'rosbag record -O {bag_file} {topics}'

        os.popen(record_command)
        
        # Subscriber
        self.smr_sub = rospy.Subscriber('/smrbci/neuroprediction', NeuroOutput, self.smr_update)
        self.hmm_sub = rospy.Subscriber('/hmm/neuroprediction', NeuroOutput, self.hmm_update)
        self.exp_sub = rospy.Subscriber('/integrator/neuroprediction', NeuroOutput, self.exp_update)
        self.traversability_sub = rospy.Subscriber('/traversability_output_topic', traversability_output, self.traversability_update)
        
        # Data storage
        self.smr = None
        self.hmm = None
        self.exp = None
        self.traversability = None

        self.second_row_flag = True
        
        # CSV file setup
        self.filepath = self.root+self.file_name
        self.setup_csv()
        
        # ROS Timer to periodically write data to CSV
        self.timer = rospy.Timer(rospy.Duration(1), self.write_to_csv)

    def setup_csv(self):
        file_exists = os.path.isfile(self.filepath)
        with open(self.filepath, mode='a') as file:
            writer = csv.writer(file)
            if not file_exists:
                writer.writerow(['smr_pred', 'hmm_pred', 'exp_output', "taversability"])

    def smr_update(self, msg: NeuroOutput):
        self.smr = msg.softpredict.data
        self.smr_classes = msg.decoder.classes

    def hmm_update(self, msg: NeuroOutput):
        self.hmm = msg.softpredict.data
        self.hmm_classes = msg.decoder.classes

    def exp_update(self, msg: NeuroOutput):
        self.exp = msg.softpredict.data

    def traversability_update(self, msg: traversability_output):
        self.traversability = msg.T.data

    def write_to_csv(self, event):
        if self.smr is not None and self.hmm is not None and self.exp is not None and self.traversability is not None:
            with open(self.filepath, mode='a') as file:
                writer = csv.writer(file)
                if self.second_row_flag == True:
                    writer.writerow([self.smr_classes, self.hmm_classes, self.hmm_classes, None])
                    self.second_row_flag = False    
                writer.writerow([self.smr, self.hmm, self.exp, self.traversability])

            # Reset data to None to ensure new data is collected
            self.smr = None
            self.hmm = None
            self.exp = None
            self.traversability = None

if __name__ == '__main__':
    try:
        data_recorder()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass