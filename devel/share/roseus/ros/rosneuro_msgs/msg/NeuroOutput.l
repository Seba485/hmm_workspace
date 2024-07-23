;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::NeuroOutput)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'NeuroOutput (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::NEUROOUTPUT")
  (make-package "ROSNEURO_MSGS::NEUROOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude NeuroOutput.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosneuro_msgs::NeuroOutput
  :super ros::object
  :slots (_header _neuroheader _softpredict _hardpredict _decoder ))

(defmethod rosneuro_msgs::NeuroOutput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:neuroheader __neuroheader) (instance rosneuro_msgs::NeuroHeader :init))
    ((:softpredict __softpredict) (instance rosneuro_msgs::NeuroDataFloat :init))
    ((:hardpredict __hardpredict) (instance rosneuro_msgs::NeuroDataInt32 :init))
    ((:decoder __decoder) (instance rosneuro_msgs::NeuroDecoder :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _neuroheader __neuroheader)
   (setq _softpredict __softpredict)
   (setq _hardpredict __hardpredict)
   (setq _decoder __decoder)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:neuroheader
   (&rest __neuroheader)
   (if (keywordp (car __neuroheader))
       (send* _neuroheader __neuroheader)
     (progn
       (if __neuroheader (setq _neuroheader (car __neuroheader)))
       _neuroheader)))
  (:softpredict
   (&rest __softpredict)
   (if (keywordp (car __softpredict))
       (send* _softpredict __softpredict)
     (progn
       (if __softpredict (setq _softpredict (car __softpredict)))
       _softpredict)))
  (:hardpredict
   (&rest __hardpredict)
   (if (keywordp (car __hardpredict))
       (send* _hardpredict __hardpredict)
     (progn
       (if __hardpredict (setq _hardpredict (car __hardpredict)))
       _hardpredict)))
  (:decoder
   (&rest __decoder)
   (if (keywordp (car __decoder))
       (send* _decoder __decoder)
     (progn
       (if __decoder (setq _decoder (car __decoder)))
       _decoder)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rosneuro_msgs/NeuroHeader _neuroheader
    (send _neuroheader :serialization-length)
    ;; rosneuro_msgs/NeuroDataFloat _softpredict
    (send _softpredict :serialization-length)
    ;; rosneuro_msgs/NeuroDataInt32 _hardpredict
    (send _hardpredict :serialization-length)
    ;; rosneuro_msgs/NeuroDecoder _decoder
    (send _decoder :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rosneuro_msgs/NeuroHeader _neuroheader
       (send _neuroheader :serialize s)
     ;; rosneuro_msgs/NeuroDataFloat _softpredict
       (send _softpredict :serialize s)
     ;; rosneuro_msgs/NeuroDataInt32 _hardpredict
       (send _hardpredict :serialize s)
     ;; rosneuro_msgs/NeuroDecoder _decoder
       (send _decoder :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rosneuro_msgs/NeuroHeader _neuroheader
     (send _neuroheader :deserialize buf ptr-) (incf ptr- (send _neuroheader :serialization-length))
   ;; rosneuro_msgs/NeuroDataFloat _softpredict
     (send _softpredict :deserialize buf ptr-) (incf ptr- (send _softpredict :serialization-length))
   ;; rosneuro_msgs/NeuroDataInt32 _hardpredict
     (send _hardpredict :deserialize buf ptr-) (incf ptr- (send _hardpredict :serialization-length))
   ;; rosneuro_msgs/NeuroDecoder _decoder
     (send _decoder :deserialize buf ptr-) (incf ptr- (send _decoder :serialization-length))
   ;;
   self)
  )

(setf (get rosneuro_msgs::NeuroOutput :md5sum-) "0460a5803a75972e2c86e91d64e44fdc")
(setf (get rosneuro_msgs::NeuroOutput :datatype-) "rosneuro_msgs/NeuroOutput")
(setf (get rosneuro_msgs::NeuroOutput :definition-)
      "# NeuroOutput Message

# Header
Header header

# NeuroHeader
NeuroHeader neuroheader

# Output
NeuroDataFloat softpredict
NeuroDataInt32 hardpredict

# NeuroDecoder
NeuroDecoder decoder

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: rosneuro_msgs/NeuroHeader
uint32 seq

================================================================================
MSG: rosneuro_msgs/NeuroDataFloat
NeuroDataInfo info
float32[] data



================================================================================
MSG: rosneuro_msgs/NeuroDataInfo
# NeuroDataInfo Message

uint16    nsamples
uint16    nchannels
uint16    stride
string    unit
string    transducter
string    prefiltering		# Hardware prefiltering
uint8     isint
float64[] minmax
string[]  labels				# Labels of channels

================================================================================
MSG: rosneuro_msgs/NeuroDataInt32
NeuroDataInfo info
int32[] data



================================================================================
MSG: rosneuro_msgs/NeuroDecoder
string type
string path
int32[] classes

")



(provide :rosneuro_msgs/NeuroOutput "0460a5803a75972e2c86e91d64e44fdc")


