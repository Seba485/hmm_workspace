; Auto-generated. Do not edit!


(cl:in-package hmm_sim-msg)


;//! \htmlinclude traversability_output.msg.html

(cl:defclass <traversability_output> (roslisp-msg-protocol:ros-message)
  ((T
    :reader T
    :initarg :T
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray)))
)

(cl:defclass traversability_output (<traversability_output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <traversability_output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'traversability_output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hmm_sim-msg:<traversability_output> is deprecated: use hmm_sim-msg:traversability_output instead.")))

(cl:ensure-generic-function 'T-val :lambda-list '(m))
(cl:defmethod T-val ((m <traversability_output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmm_sim-msg:T-val is deprecated.  Use hmm_sim-msg:T instead.")
  (T m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <traversability_output>) ostream)
  "Serializes a message object of type '<traversability_output>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'T) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <traversability_output>) istream)
  "Deserializes a message object of type '<traversability_output>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'T) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<traversability_output>)))
  "Returns string type for a message object of type '<traversability_output>"
  "hmm_sim/traversability_output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'traversability_output)))
  "Returns string type for a message object of type 'traversability_output"
  "hmm_sim/traversability_output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<traversability_output>)))
  "Returns md5sum for a message object of type '<traversability_output>"
  "7a60b282933312abebdc53cfe38c9db1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'traversability_output)))
  "Returns md5sum for a message object of type 'traversability_output"
  "7a60b282933312abebdc53cfe38c9db1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<traversability_output>)))
  "Returns full string definition for message of type '<traversability_output>"
  (cl:format cl:nil "std_msgs/Float32MultiArray T~%~%~%~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'traversability_output)))
  "Returns full string definition for message of type 'traversability_output"
  (cl:format cl:nil "std_msgs/Float32MultiArray T~%~%~%~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <traversability_output>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'T))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <traversability_output>))
  "Converts a ROS message object to a list"
  (cl:list 'traversability_output
    (cl:cons ':T (T msg))
))
