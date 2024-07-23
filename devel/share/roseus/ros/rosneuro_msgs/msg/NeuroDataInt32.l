;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::NeuroDataInt32)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'NeuroDataInt32 (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::NEURODATAINT32")
  (make-package "ROSNEURO_MSGS::NEURODATAINT32"))

(in-package "ROS")
;;//! \htmlinclude NeuroDataInt32.msg.html


(defclass rosneuro_msgs::NeuroDataInt32
  :super ros::object
  :slots (_info _data ))

(defmethod rosneuro_msgs::NeuroDataInt32
  (:init
   (&key
    ((:info __info) (instance rosneuro_msgs::NeuroDataInfo :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
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
    ;; int32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rosneuro_msgs/NeuroDataInfo _info
       (send _info :serialize s)
     ;; int32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rosneuro_msgs/NeuroDataInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; int32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rosneuro_msgs::NeuroDataInt32 :md5sum-) "6607bffc84ab05ea306938c540428f96")
(setf (get rosneuro_msgs::NeuroDataInt32 :datatype-) "rosneuro_msgs/NeuroDataInt32")
(setf (get rosneuro_msgs::NeuroDataInt32 :definition-)
      "NeuroDataInfo info
int32[] data



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



(provide :rosneuro_msgs/NeuroDataInt32 "6607bffc84ab05ea306938c540428f96")


