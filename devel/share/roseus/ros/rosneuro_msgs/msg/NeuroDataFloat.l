;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::NeuroDataFloat)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'NeuroDataFloat (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::NEURODATAFLOAT")
  (make-package "ROSNEURO_MSGS::NEURODATAFLOAT"))

(in-package "ROS")
;;//! \htmlinclude NeuroDataFloat.msg.html


(defclass rosneuro_msgs::NeuroDataFloat
  :super ros::object
  :slots (_info _data ))

(defmethod rosneuro_msgs::NeuroDataFloat
  (:init
   (&key
    ((:info __info) (instance rosneuro_msgs::NeuroDataInfo :init))
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _info __info)
   (setq _data __data)
   self)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; rosneuro_msgs/NeuroDataInfo _info
    (send _info :serialization-length)
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rosneuro_msgs/NeuroDataInfo _info
       (send _info :serialize s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rosneuro_msgs/NeuroDataInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rosneuro_msgs::NeuroDataFloat :md5sum-) "32be46802288cbb30589c65e16703676")
(setf (get rosneuro_msgs::NeuroDataFloat :datatype-) "rosneuro_msgs/NeuroDataFloat")
(setf (get rosneuro_msgs::NeuroDataFloat :definition-)
      "NeuroDataInfo info
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

")



(provide :rosneuro_msgs/NeuroDataFloat "32be46802288cbb30589c65e16703676")


