#!/usr/bin/env python3
import rospy
import pandas as pd
import numpy as np
#from hmm_sim.msg import classifier_output #inport the custom message

from rosneuro_msgs.msg import NeuroOutput 

if __name__ == '__main__':
    rospy.init_node('static_classifier')
    rospy.loginfo('Static classifier up')

    #pub = rospy.Publisher('classifier_output_topic', classifier_output, queue_size=10)

    pub = rospy.Publisher('/smrbci/neuroprediction', NeuroOutput, queue_size=10)

    # topic name, msg type, buffer

    f = rospy.get_param('~f')
    rate = rospy.Rate(f)

    #read the data
    path = r"/home/sebastiano/hmm_workspace/src/hmm_sim/src/"
    dataframe = pd.read_csv(path+"data.csv")
    static_output = list()
    for line in dataframe.smrbci:
        pp_1 = float(line[1:line.index(',')])
        pp_2 = float(line[line.index(',')+1:len(line)-1])
        vect = [pp_1,pp_2]
        static_output.append(vect)
    
    

    count = 0
    while count<len(static_output) and (not rospy.is_shutdown()):
        rospy.loginfo('--------------------------------------------------')
        rospy.loginfo('Progress-->'+str(count))
        pp = static_output[count]
        
        msg = NeuroOutput()

        msg.header.stamp = rospy.Time.now()
        msg.neuroheader.seq = 1
        msg.softpredict.data = pp
        #msg.pp_output.data = static_output[count]
        hard_pred = np.zeros(len(pp), dtype=np.int32)
        hard_pred[np.argmax(pp)] = 1
        hard_pred = np.round(hard_pred)
        hard_pred = tuple(hard_pred)
        msg.hardpredict.data = hard_pred

        msg.decoder.classes = [773, 771, 783]
        msg.decoder.path = 'Desktop'
        msg.decoder.type = 'Gaussian'

        count += 1

        pub.publish(msg) #publish the message on the topic

        rate.sleep() 
    
    rospy.signal_shutdown('Finished simolated data')