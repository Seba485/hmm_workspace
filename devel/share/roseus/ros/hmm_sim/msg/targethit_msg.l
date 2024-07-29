;; Auto-generated. Do not edit!


(when (boundp 'hmm_sim::targethit_msg)
  (if (not (find-package "HMM_SIM"))
    (make-package "HMM_SIM"))
  (shadow 'targethit_msg (find-package "HMM_SIM")))
(unless (find-package "HMM_SIM::TARGETHIT_MSG")
  (make-package "HMM_SIM::TARGETHIT_MSG"))

(in-package "ROS")
;;//! \htmlinclude targethit_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hmm_sim::targethit_msg
  :super ros::object
  :slots (_data ))

(defmethod hmm_sim::targethit_msg
  (:init
   (&key
    ((:data __data) (instance std_msgs::Int32 :init))
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
    ;; std_msgs/Int32 _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get hmm_sim::targethit_msg :md5sum-) "ced17149d0dab0ac93acae0e222e30ee")
(setf (get hmm_sim::targethit_msg :datatype-) "hmm_sim/targethit_msg")
(setf (get hmm_sim::targethit_msg :definition-)
      "std_msgs/Int32 data
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :hmm_sim/targethit_msg "ced17149d0dab0ac93acae0e222e30ee")


