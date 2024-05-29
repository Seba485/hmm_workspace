;; Auto-generated. Do not edit!


(when (boundp 'hmm_sim::hmm_input)
  (if (not (find-package "HMM_SIM"))
    (make-package "HMM_SIM"))
  (shadow 'hmm_input (find-package "HMM_SIM")))
(unless (find-package "HMM_SIM::HMM_INPUT")
  (make-package "HMM_SIM::HMM_INPUT"))

(in-package "ROS")
;;//! \htmlinclude hmm_input.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hmm_sim::hmm_input
  :super ros::object
  :slots (_pp_buffer _T ))

(defmethod hmm_sim::hmm_input
  (:init
   (&key
    ((:pp_buffer __pp_buffer) (instance std_msgs::Float32MultiArray :init))
    ((:T __T) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _pp_buffer __pp_buffer)
   (setq _T __T)
   self)
  (:pp_buffer
   (&rest __pp_buffer)
   (if (keywordp (car __pp_buffer))
       (send* _pp_buffer __pp_buffer)
     (progn
       (if __pp_buffer (setq _pp_buffer (car __pp_buffer)))
       _pp_buffer)))
  (:T
   (&rest __T)
   (if (keywordp (car __T))
       (send* _T __T)
     (progn
       (if __T (setq _T (car __T)))
       _T)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32MultiArray _pp_buffer
    (send _pp_buffer :serialization-length)
    ;; std_msgs/Float32MultiArray _T
    (send _T :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32MultiArray _pp_buffer
       (send _pp_buffer :serialize s)
     ;; std_msgs/Float32MultiArray _T
       (send _T :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32MultiArray _pp_buffer
     (send _pp_buffer :deserialize buf ptr-) (incf ptr- (send _pp_buffer :serialization-length))
   ;; std_msgs/Float32MultiArray _T
     (send _T :deserialize buf ptr-) (incf ptr- (send _T :serialization-length))
   ;;
   self)
  )

(setf (get hmm_sim::hmm_input :md5sum-) "21b73ee4adba6363fb243c6381457009")
(setf (get hmm_sim::hmm_input :datatype-) "hmm_sim/hmm_input")
(setf (get hmm_sim::hmm_input :definition-)
      "std_msgs/Float32MultiArray pp_buffer
std_msgs/Float32MultiArray T




================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :hmm_sim/hmm_input "21b73ee4adba6363fb243c6381457009")


