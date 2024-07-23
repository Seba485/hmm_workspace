;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::NeuroFrame)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'NeuroFrame (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::NEUROFRAME")
  (make-package "ROSNEURO_MSGS::NEUROFRAME"))

(in-package "ROS")
;;//! \htmlinclude NeuroFrame.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosneuro_msgs::NeuroFrame
  :super ros::object
  :slots (_header _neuroheader _sr _eeg _exg _tri ))

(defmethod rosneuro_msgs::NeuroFrame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:neuroheader __neuroheader) (instance rosneuro_msgs::NeuroHeader :init))
    ((:sr __sr) 0)
    ((:eeg __eeg) (instance rosneuro_msgs::NeuroDataFloat :init))
    ((:exg __exg) (instance rosneuro_msgs::NeuroDataFloat :init))
    ((:tri __tri) (instance rosneuro_msgs::NeuroDataInt32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _neuroheader __neuroheader)
   (setq _sr (round __sr))
   (setq _eeg __eeg)
   (setq _exg __exg)
   (setq _tri __tri)
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
  (:sr
   (&optional __sr)
   (if __sr (setq _sr __sr)) _sr)
  (:eeg
   (&rest __eeg)
   (if (keywordp (car __eeg))
       (send* _eeg __eeg)
     (progn
       (if __eeg (setq _eeg (car __eeg)))
       _eeg)))
  (:exg
   (&rest __exg)
   (if (keywordp (car __exg))
       (send* _exg __exg)
     (progn
       (if __exg (setq _exg (car __exg)))
       _exg)))
  (:tri
   (&rest __tri)
   (if (keywordp (car __tri))
       (send* _tri __tri)
     (progn
       (if __tri (setq _tri (car __tri)))
       _tri)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rosneuro_msgs/NeuroHeader _neuroheader
    (send _neuroheader :serialization-length)
    ;; uint16 _sr
    2
    ;; rosneuro_msgs/NeuroDataFloat _eeg
    (send _eeg :serialization-length)
    ;; rosneuro_msgs/NeuroDataFloat _exg
    (send _exg :serialization-length)
    ;; rosneuro_msgs/NeuroDataInt32 _tri
    (send _tri :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rosneuro_msgs/NeuroHeader _neuroheader
       (send _neuroheader :serialize s)
     ;; uint16 _sr
       (write-word _sr s)
     ;; rosneuro_msgs/NeuroDataFloat _eeg
       (send _eeg :serialize s)
     ;; rosneuro_msgs/NeuroDataFloat _exg
       (send _exg :serialize s)
     ;; rosneuro_msgs/NeuroDataInt32 _tri
       (send _tri :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rosneuro_msgs/NeuroHeader _neuroheader
     (send _neuroheader :deserialize buf ptr-) (incf ptr- (send _neuroheader :serialization-length))
   ;; uint16 _sr
     (setq _sr (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; rosneuro_msgs/NeuroDataFloat _eeg
     (send _eeg :deserialize buf ptr-) (incf ptr- (send _eeg :serialization-length))
   ;; rosneuro_msgs/NeuroDataFloat _exg
     (send _exg :deserialize buf ptr-) (incf ptr- (send _exg :serialization-length))
   ;; rosneuro_msgs/NeuroDataInt32 _tri
     (send _tri :deserialize buf ptr-) (incf ptr- (send _tri :serialization-length))
   ;;
   self)
  )

(setf (get rosneuro_msgs::NeuroFrame :md5sum-) "797997e5036eb017437ce855856d3bad")
(setf (get rosneuro_msgs::NeuroFrame :datatype-) "rosneuro_msgs/NeuroFrame")
(setf (get rosneuro_msgs::NeuroFrame :definition-)
      "# NeuroFrame Message

# Header
Header header

# NeuroHeader
NeuroHeader neuroheader

# Sampling rate
uint16 sr

# NeuroData
NeuroDataFloat eeg
NeuroDataFloat exg
NeuroDataInt32 tri




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



")



(provide :rosneuro_msgs/NeuroFrame "797997e5036eb017437ce855856d3bad")


