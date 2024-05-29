;; Auto-generated. Do not edit!


(when (boundp 'hmm_input::hmm_input)
  (if (not (find-package "HMM_INPUT"))
    (make-package "HMM_INPUT"))
  (shadow 'hmm_input (find-package "HMM_INPUT")))
(unless (find-package "HMM_INPUT::HMM_INPUT")
  (make-package "HMM_INPUT::HMM_INPUT"))

(in-package "ROS")
;;//! \htmlinclude hmm_input.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hmm_input::hmm_input
  :super ros::object
  :slots (_pp_output _traversability_output ))

(defmethod hmm_input::hmm_input
  (:init
   (&key
    ((:pp_output __pp_output) (instance std_msgs::Float32MultiArray :init))
    ((:traversability_output __traversability_output) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _pp_output __pp_output)
   (setq _traversability_output __traversability_output)
   self)
  (:pp_output
   (&rest __pp_output)
   (if (keywordp (car __pp_output))
       (send* _pp_output __pp_output)
     (progn
       (if __pp_output (setq _pp_output (car __pp_output)))
       _pp_output)))
  (:traversability_output
   (&rest __traversability_output)
   (if (keywordp (car __traversability_output))
       (send* _traversability_output __traversability_output)
     (progn
       (if __traversability_output (setq _traversability_output (car __traversability_output)))
       _traversability_output)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32MultiArray _pp_output
    (send _pp_output :serialization-length)
    ;; std_msgs/Float32MultiArray _traversability_output
    (send _traversability_output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32MultiArray _pp_output
       (send _pp_output :serialize s)
     ;; std_msgs/Float32MultiArray _traversability_output
       (send _traversability_output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32MultiArray _pp_output
     (send _pp_output :deserialize buf ptr-) (incf ptr- (send _pp_output :serialization-length))
   ;; std_msgs/Float32MultiArray _traversability_output
     (send _traversability_output :deserialize buf ptr-) (incf ptr- (send _traversability_output :serialization-length))
   ;;
   self)
  )

(setf (get hmm_input::hmm_input :md5sum-) "a382f618debd21b36d14084cea220559")
(setf (get hmm_input::hmm_input :datatype-) "hmm_input/hmm_input")
(setf (get hmm_input::hmm_input :definition-)
      "std_msgs/Float32MultiArray pp_output
std_msgs/Float32MultiArray traversability_output
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



(provide :hmm_input/hmm_input "a382f618debd21b36d14084cea220559")


