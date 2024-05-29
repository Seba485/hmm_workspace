;; Auto-generated. Do not edit!


(when (boundp 'hmm_sim::classifier_output)
  (if (not (find-package "HMM_SIM"))
    (make-package "HMM_SIM"))
  (shadow 'classifier_output (find-package "HMM_SIM")))
(unless (find-package "HMM_SIM::CLASSIFIER_OUTPUT")
  (make-package "HMM_SIM::CLASSIFIER_OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude classifier_output.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hmm_sim::classifier_output
  :super ros::object
  :slots (_pp_output ))

(defmethod hmm_sim::classifier_output
  (:init
   (&key
    ((:pp_output __pp_output) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _pp_output __pp_output)
   self)
  (:pp_output
   (&rest __pp_output)
   (if (keywordp (car __pp_output))
       (send* _pp_output __pp_output)
     (progn
       (if __pp_output (setq _pp_output (car __pp_output)))
       _pp_output)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32MultiArray _pp_output
    (send _pp_output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32MultiArray _pp_output
       (send _pp_output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32MultiArray _pp_output
     (send _pp_output :deserialize buf ptr-) (incf ptr- (send _pp_output :serialization-length))
   ;;
   self)
  )

(setf (get hmm_sim::classifier_output :md5sum-) "5e1c1a87e35ecc5a2d359b86d7f3c216")
(setf (get hmm_sim::classifier_output :datatype-) "hmm_sim/classifier_output")
(setf (get hmm_sim::classifier_output :definition-)
      "std_msgs/Float32MultiArray pp_output





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



(provide :hmm_sim/classifier_output "5e1c1a87e35ecc5a2d359b86d7f3c216")


