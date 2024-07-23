;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::NeuroHeader)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'NeuroHeader (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::NEUROHEADER")
  (make-package "ROSNEURO_MSGS::NEUROHEADER"))

(in-package "ROS")
;;//! \htmlinclude NeuroHeader.msg.html


(defclass rosneuro_msgs::NeuroHeader
  :super ros::object
  :slots (_seq ))

(defmethod rosneuro_msgs::NeuroHeader
  (:init
   (&key
    ((:seq __seq) 0)
    )
   (send-super :init)
   (setq _seq (round __seq))
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:serialization-length
   ()
   (+
    ;; uint32 _seq
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seq
       (write-long _seq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rosneuro_msgs::NeuroHeader :md5sum-) "028bf764a68568ec6c5a90be068a2ef7")
(setf (get rosneuro_msgs::NeuroHeader :datatype-) "rosneuro_msgs/NeuroHeader")
(setf (get rosneuro_msgs::NeuroHeader :definition-)
      "uint32 seq

")



(provide :rosneuro_msgs/NeuroHeader "028bf764a68568ec6c5a90be068a2ef7")


