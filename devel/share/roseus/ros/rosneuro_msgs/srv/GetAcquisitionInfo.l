;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::GetAcquisitionInfo)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'GetAcquisitionInfo (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::GETACQUISITIONINFO")
  (make-package "ROSNEURO_MSGS::GETACQUISITIONINFO"))
(unless (find-package "ROSNEURO_MSGS::GETACQUISITIONINFOREQUEST")
  (make-package "ROSNEURO_MSGS::GETACQUISITIONINFOREQUEST"))
(unless (find-package "ROSNEURO_MSGS::GETACQUISITIONINFORESPONSE")
  (make-package "ROSNEURO_MSGS::GETACQUISITIONINFORESPONSE"))

(in-package "ROS")





(defclass rosneuro_msgs::GetAcquisitionInfoRequest
  :super ros::object
  :slots ())

(defmethod rosneuro_msgs::GetAcquisitionInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rosneuro_msgs::GetAcquisitionInfoResponse
  :super ros::object
  :slots (_result _device_model _device_id _frame ))

(defmethod rosneuro_msgs::GetAcquisitionInfoResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:device_model __device_model) "")
    ((:device_id __device_id) "")
    ((:frame __frame) (instance rosneuro_msgs::NeuroFrame :init))
    )
   (send-super :init)
   (setq _result __result)
   (setq _device_model (string __device_model))
   (setq _device_id (string __device_id))
   (setq _frame __frame)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:device_model
   (&optional __device_model)
   (if __device_model (setq _device_model __device_model)) _device_model)
  (:device_id
   (&optional __device_id)
   (if __device_id (setq _device_id __device_id)) _device_id)
  (:frame
   (&rest __frame)
   (if (keywordp (car __frame))
       (send* _frame __frame)
     (progn
       (if __frame (setq _frame (car __frame)))
       _frame)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _device_model
    4 (length _device_model)
    ;; string _device_id
    4 (length _device_id)
    ;; rosneuro_msgs/NeuroFrame _frame
    (send _frame :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _device_model
       (write-long (length _device_model) s) (princ _device_model s)
     ;; string _device_id
       (write-long (length _device_id) s) (princ _device_id s)
     ;; rosneuro_msgs/NeuroFrame _frame
       (send _frame :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _device_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rosneuro_msgs/NeuroFrame _frame
     (send _frame :deserialize buf ptr-) (incf ptr- (send _frame :serialization-length))
   ;;
   self)
  )

(defclass rosneuro_msgs::GetAcquisitionInfo
  :super ros::object
  :slots ())

(setf (get rosneuro_msgs::GetAcquisitionInfo :md5sum-) "8cf1aae8f1ae02fdc8775b1362badac5")
(setf (get rosneuro_msgs::GetAcquisitionInfo :datatype-) "rosneuro_msgs/GetAcquisitionInfo")
(setf (get rosneuro_msgs::GetAcquisitionInfo :request) rosneuro_msgs::GetAcquisitionInfoRequest)
(setf (get rosneuro_msgs::GetAcquisitionInfo :response) rosneuro_msgs::GetAcquisitionInfoResponse)

(defmethod rosneuro_msgs::GetAcquisitionInfoRequest
  (:response () (instance rosneuro_msgs::GetAcquisitionInfoResponse :init)))

(setf (get rosneuro_msgs::GetAcquisitionInfoRequest :md5sum-) "8cf1aae8f1ae02fdc8775b1362badac5")
(setf (get rosneuro_msgs::GetAcquisitionInfoRequest :datatype-) "rosneuro_msgs/GetAcquisitionInfoRequest")
(setf (get rosneuro_msgs::GetAcquisitionInfoRequest :definition-)
      "---
bool            result

string device_model
string device_id

NeuroFrame frame


================================================================================
MSG: rosneuro_msgs/NeuroFrame
# NeuroFrame Message

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

(setf (get rosneuro_msgs::GetAcquisitionInfoResponse :md5sum-) "8cf1aae8f1ae02fdc8775b1362badac5")
(setf (get rosneuro_msgs::GetAcquisitionInfoResponse :datatype-) "rosneuro_msgs/GetAcquisitionInfoResponse")
(setf (get rosneuro_msgs::GetAcquisitionInfoResponse :definition-)
      "---
bool            result

string device_model
string device_id

NeuroFrame frame


================================================================================
MSG: rosneuro_msgs/NeuroFrame
# NeuroFrame Message

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



(provide :rosneuro_msgs/GetAcquisitionInfo "8cf1aae8f1ae02fdc8775b1362badac5")


