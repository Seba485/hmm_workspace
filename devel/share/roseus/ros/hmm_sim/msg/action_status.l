;; Auto-generated. Do not edit!


(when (boundp 'hmm_sim::action_status)
  (if (not (find-package "HMM_SIM"))
    (make-package "HMM_SIM"))
  (shadow 'action_status (find-package "HMM_SIM")))
(unless (find-package "HMM_SIM::ACTION_STATUS")
  (make-package "HMM_SIM::ACTION_STATUS"))

(in-package "ROS")
;;//! \htmlinclude action_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hmm_sim::action_status
  :super ros::object
  :slots (_data ))

(defmethod hmm_sim::action_status
  (:init
   (&key
    ((:data __data) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get hmm_sim::action_status :md5sum-) "b5717fbd1e926acc7d0f3fedd0c81793")
(setf (get hmm_sim::action_status :datatype-) "hmm_sim/action_status")
(setf (get hmm_sim::action_status :definition-)
      "std_msgs/Bool data
================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :hmm_sim/action_status "b5717fbd1e926acc7d0f3fedd0c81793")


