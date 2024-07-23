;; Auto-generated. Do not edit!


(when (boundp 'rosneuro_msgs::NeuroDataInfo)
  (if (not (find-package "ROSNEURO_MSGS"))
    (make-package "ROSNEURO_MSGS"))
  (shadow 'NeuroDataInfo (find-package "ROSNEURO_MSGS")))
(unless (find-package "ROSNEURO_MSGS::NEURODATAINFO")
  (make-package "ROSNEURO_MSGS::NEURODATAINFO"))

(in-package "ROS")
;;//! \htmlinclude NeuroDataInfo.msg.html


(defclass rosneuro_msgs::NeuroDataInfo
  :super ros::object
  :slots (_nsamples _nchannels _stride _unit _transducter _prefiltering _isint _minmax _labels ))

(defmethod rosneuro_msgs::NeuroDataInfo
  (:init
   (&key
    ((:nsamples __nsamples) 0)
    ((:nchannels __nchannels) 0)
    ((:stride __stride) 0)
    ((:unit __unit) "")
    ((:transducter __transducter) "")
    ((:prefiltering __prefiltering) "")
    ((:isint __isint) 0)
    ((:minmax __minmax) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:labels __labels) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _nsamples (round __nsamples))
   (setq _nchannels (round __nchannels))
   (setq _stride (round __stride))
   (setq _unit (string __unit))
   (setq _transducter (string __transducter))
   (setq _prefiltering (string __prefiltering))
   (setq _isint (round __isint))
   (setq _minmax __minmax)
   (setq _labels __labels)
   self)
  (:nsamples
   (&optional __nsamples)
   (if __nsamples (setq _nsamples __nsamples)) _nsamples)
  (:nchannels
   (&optional __nchannels)
   (if __nchannels (setq _nchannels __nchannels)) _nchannels)
  (:stride
   (&optional __stride)
   (if __stride (setq _stride __stride)) _stride)
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:transducter
   (&optional __transducter)
   (if __transducter (setq _transducter __transducter)) _transducter)
  (:prefiltering
   (&optional __prefiltering)
   (if __prefiltering (setq _prefiltering __prefiltering)) _prefiltering)
  (:isint
   (&optional __isint)
   (if __isint (setq _isint __isint)) _isint)
  (:minmax
   (&optional __minmax)
   (if __minmax (setq _minmax __minmax)) _minmax)
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:serialization-length
   ()
   (+
    ;; uint16 _nsamples
    2
    ;; uint16 _nchannels
    2
    ;; uint16 _stride
    2
    ;; string _unit
    4 (length _unit)
    ;; string _transducter
    4 (length _transducter)
    ;; string _prefiltering
    4 (length _prefiltering)
    ;; uint8 _isint
    1
    ;; float64[] _minmax
    (* 8    (length _minmax)) 4
    ;; string[] _labels
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _labels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _nsamples
       (write-word _nsamples s)
     ;; uint16 _nchannels
       (write-word _nchannels s)
     ;; uint16 _stride
       (write-word _stride s)
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;; string _transducter
       (write-long (length _transducter) s) (princ _transducter s)
     ;; string _prefiltering
       (write-long (length _prefiltering) s) (princ _prefiltering s)
     ;; uint8 _isint
       (write-byte _isint s)
     ;; float64[] _minmax
     (write-long (length _minmax) s)
     (dotimes (i (length _minmax))
       (sys::poke (elt _minmax i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _labels
     (write-long (length _labels) s)
     (dolist (elem _labels)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _nsamples
     (setq _nsamples (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _nchannels
     (setq _nchannels (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _stride
     (setq _stride (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _transducter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _transducter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _prefiltering
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prefiltering (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _isint
     (setq _isint (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _minmax
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _minmax (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _minmax i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _labels i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get rosneuro_msgs::NeuroDataInfo :md5sum-) "6662e2f96240b54d66e954d119b2ab01")
(setf (get rosneuro_msgs::NeuroDataInfo :datatype-) "rosneuro_msgs/NeuroDataInfo")
(setf (get rosneuro_msgs::NeuroDataInfo :definition-)
      "# NeuroDataInfo Message

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



(provide :rosneuro_msgs/NeuroDataInfo "6662e2f96240b54d66e954d119b2ab01")


