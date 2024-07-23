;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::NeuroEvent)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'NeuroEvent (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::NEUROEVENT")
  (make-package "ROSNEURO_MSGS::NEUROEVENT"))

(in-package "ROS")
;;//! \htmlinclude NeuroEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosneuro_msgs::NeuroEvent
  :super ros::object
  :slots (_header _neuroheader _version _event _duration _family _description ))

(defmethod rosneuro_msgs::NeuroEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:neuroheader __neuroheader) (instance rosneuro_msgs::NeuroHeader :init))
    ((:version __version) "")
    ((:event __event) 0)
    ((:duration __duration) 0.0)
    ((:family __family) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _neuroheader __neuroheader)
   (setq _version (string __version))
   (setq _event (round __event))
   (setq _duration (float __duration))
   (setq _family (round __family))
   (setq _description (string __description))
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
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:family
   (&optional __family)
   (if __family (setq _family __family)) _family)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rosneuro_msgs/NeuroHeader _neuroheader
    (send _neuroheader :serialization-length)
    ;; string _version
    4 (length _version)
    ;; int32 _event
    4
    ;; float32 _duration
    4
    ;; int32 _family
    4
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rosneuro_msgs/NeuroHeader _neuroheader
       (send _neuroheader :serialize s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; int32 _event
       (write-long _event s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _family
       (write-long _family s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rosneuro_msgs/NeuroHeader _neuroheader
     (send _neuroheader :deserialize buf ptr-) (incf ptr- (send _neuroheader :serialization-length))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _event
     (setq _event (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _family
     (setq _family (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rosneuro_msgs::NeuroEvent :md5sum-) "bf2c8b385ba6522f6af8df2da3585c4c")
(setf (get rosneuro_msgs::NeuroEvent :datatype-) "rosneuro_msgs/NeuroEvent")
(setf (get rosneuro_msgs::NeuroEvent :definition-)
      "Header 		header
NeuroHeader neuroheader
string 		version
int32  		event
float32 	duration
int32 		family
string 		description

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

")



(provide :rosneuro_msgs/NeuroEvent "bf2c8b385ba6522f6af8df2da3585c4c")


