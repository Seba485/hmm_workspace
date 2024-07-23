; Auto-generated. Do not edit!


(cl:in-package rosneuro_msgs-msg)


;//! \htmlinclude NeuroOutput.msg.html

(cl:defclass <NeuroOutput> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (neuroheader
    :reader neuroheader
    :initarg :neuroheader
    :type rosneuro_msgs-msg:NeuroHeader
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroHeader))
   (softpredict
    :reader softpredict
    :initarg :softpredict
    :type rosneuro_msgs-msg:NeuroDataFloat
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroDataFloat))
   (hardpredict
    :reader hardpredict
    :initarg :hardpredict
    :type rosneuro_msgs-msg:NeuroDataInt32
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroDataInt32))
   (decoder
    :reader decoder
    :initarg :decoder
    :type rosneuro_msgs-msg:NeuroDecoder
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroDecoder)))
)

(cl:defclass NeuroOutput (<NeuroOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeuroOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeuroOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosneuro_msgs-msg:<NeuroOutput> is deprecated: use rosneuro_msgs-msg:NeuroOutput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NeuroOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:header-val is deprecated.  Use rosneuro_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'neuroheader-val :lambda-list '(m))
(cl:defmethod neuroheader-val ((m <NeuroOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:neuroheader-val is deprecated.  Use rosneuro_msgs-msg:neuroheader instead.")
  (neuroheader m))

(cl:ensure-generic-function 'softpredict-val :lambda-list '(m))
(cl:defmethod softpredict-val ((m <NeuroOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:softpredict-val is deprecated.  Use rosneuro_msgs-msg:softpredict instead.")
  (softpredict m))

(cl:ensure-generic-function 'hardpredict-val :lambda-list '(m))
(cl:defmethod hardpredict-val ((m <NeuroOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:hardpredict-val is deprecated.  Use rosneuro_msgs-msg:hardpredict instead.")
  (hardpredict m))

(cl:ensure-generic-function 'decoder-val :lambda-list '(m))
(cl:defmethod decoder-val ((m <NeuroOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:decoder-val is deprecated.  Use rosneuro_msgs-msg:decoder instead.")
  (decoder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeuroOutput>) ostream)
  "Serializes a message object of type '<NeuroOutput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'neuroheader) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'softpredict) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hardpredict) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'decoder) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeuroOutput>) istream)
  "Deserializes a message object of type '<NeuroOutput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'neuroheader) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'softpredict) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hardpredict) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'decoder) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeuroOutput>)))
  "Returns string type for a message object of type '<NeuroOutput>"
  "rosneuro_msgs/NeuroOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeuroOutput)))
  "Returns string type for a message object of type 'NeuroOutput"
  "rosneuro_msgs/NeuroOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeuroOutput>)))
  "Returns md5sum for a message object of type '<NeuroOutput>"
  "0460a5803a75972e2c86e91d64e44fdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeuroOutput)))
  "Returns md5sum for a message object of type 'NeuroOutput"
  "0460a5803a75972e2c86e91d64e44fdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeuroOutput>)))
  "Returns full string definition for message of type '<NeuroOutput>"
  (cl:format cl:nil "# NeuroOutput Message~%~%# Header~%Header header~%~%# NeuroHeader~%NeuroHeader neuroheader~%~%# Output~%NeuroDataFloat softpredict~%NeuroDataInt32 hardpredict~%~%# NeuroDecoder~%NeuroDecoder decoder~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosneuro_msgs/NeuroHeader~%uint32 seq~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataFloat~%NeuroDataInfo info~%float32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInfo~%# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInt32~%NeuroDataInfo info~%int32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDecoder~%string type~%string path~%int32[] classes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeuroOutput)))
  "Returns full string definition for message of type 'NeuroOutput"
  (cl:format cl:nil "# NeuroOutput Message~%~%# Header~%Header header~%~%# NeuroHeader~%NeuroHeader neuroheader~%~%# Output~%NeuroDataFloat softpredict~%NeuroDataInt32 hardpredict~%~%# NeuroDecoder~%NeuroDecoder decoder~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosneuro_msgs/NeuroHeader~%uint32 seq~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataFloat~%NeuroDataInfo info~%float32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInfo~%# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInt32~%NeuroDataInfo info~%int32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDecoder~%string type~%string path~%int32[] classes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeuroOutput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'neuroheader))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'softpredict))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hardpredict))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'decoder))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeuroOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'NeuroOutput
    (cl:cons ':header (header msg))
    (cl:cons ':neuroheader (neuroheader msg))
    (cl:cons ':softpredict (softpredict msg))
    (cl:cons ':hardpredict (hardpredict msg))
    (cl:cons ':decoder (decoder msg))
))
