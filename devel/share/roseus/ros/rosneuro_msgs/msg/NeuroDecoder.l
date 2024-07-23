;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::NeuroDecoder)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'NeuroDecoder (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::NEURODECODER")
  (make-package "ROSNEURO_MSGS::NEURODECODER"))

(in-package "ROS")
;;//! \htmlinclude NeuroDecoder.msg.html


(defclass rosneuro_msgs::NeuroDecoder
  :super ros::object
  :slots (_type _path _classes ))

(defmethod rosneuro_msgs::NeuroDecoder
  (:init
   (&key
    ((:type __type) "")
    ((:path __path) "")
    ((:classes __classes) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _path (string __path))
   (setq _classes __classes)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:classes
   (&optional __classes)
   (if __classes (setq _classes __classes)) _classes)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _path
    4 (length _path)
    ;; int32[] _classes
    (* 4    (length _classes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; int32[] _classes
     (write-long (length _classes) s)
     (dotimes (i (length _classes))
       (write-long (elt _classes i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _classes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _classes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rosneuro_msgs::NeuroDecoder :md5sum-) "d8400b843e8bd63fce4f038875c96b8d")
(setf (get rosneuro_msgs::NeuroDecoder :datatype-) "rosneuro_msgs/NeuroDecoder")
(setf (get rosneuro_msgs::NeuroDecoder :definition-)
      "string type
string path
int32[] classes

")



(provide :rosneuro_msgs/NeuroDecoder "d8400b843e8bd63fce4f038875c96b8d")


