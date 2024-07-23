; Auto-generated. Do not edit!


(cl:in-package rosneuro_msgs-msg)


;//! \htmlinclude NeuroFrame.msg.html

(cl:defclass <NeuroFrame> (roslisp-msg-protocol:ros-message)
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
   (sr
    :reader sr
    :initarg :sr
    :type cl:fixnum
    :initform 0)
   (eeg
    :reader eeg
    :initarg :eeg
    :type rosneuro_msgs-msg:NeuroDataFloat
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroDataFloat))
   (exg
    :reader exg
    :initarg :exg
    :type rosneuro_msgs-msg:NeuroDataFloat
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroDataFloat))
   (tri
    :reader tri
    :initarg :tri
    :type rosneuro_msgs-msg:NeuroDataInt32
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroDataInt32)))
)

(cl:defclass NeuroFrame (<NeuroFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeuroFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeuroFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosneuro_msgs-msg:<NeuroFrame> is deprecated: use rosneuro_msgs-msg:NeuroFrame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NeuroFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:header-val is deprecated.  Use rosneuro_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'neuroheader-val :lambda-list '(m))
(cl:defmethod neuroheader-val ((m <NeuroFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:neuroheader-val is deprecated.  Use rosneuro_msgs-msg:neuroheader instead.")
  (neuroheader m))

(cl:ensure-generic-function 'sr-val :lambda-list '(m))
(cl:defmethod sr-val ((m <NeuroFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:sr-val is deprecated.  Use rosneuro_msgs-msg:sr instead.")
  (sr m))

(cl:ensure-generic-function 'eeg-val :lambda-list '(m))
(cl:defmethod eeg-val ((m <NeuroFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:eeg-val is deprecated.  Use rosneuro_msgs-msg:eeg instead.")
  (eeg m))

(cl:ensure-generic-function 'exg-val :lambda-list '(m))
(cl:defmethod exg-val ((m <NeuroFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:exg-val is deprecated.  Use rosneuro_msgs-msg:exg instead.")
  (exg m))

(cl:ensure-generic-function 'tri-val :lambda-list '(m))
(cl:defmethod tri-val ((m <NeuroFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:tri-val is deprecated.  Use rosneuro_msgs-msg:tri instead.")
  (tri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeuroFrame>) ostream)
  "Serializes a message object of type '<NeuroFrame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'neuroheader) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sr)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eeg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'exg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tri) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeuroFrame>) istream)
  "Deserializes a message object of type '<NeuroFrame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'neuroheader) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sr)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eeg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'exg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tri) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeuroFrame>)))
  "Returns string type for a message object of type '<NeuroFrame>"
  "rosneuro_msgs/NeuroFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeuroFrame)))
  "Returns string type for a message object of type 'NeuroFrame"
  "rosneuro_msgs/NeuroFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeuroFrame>)))
  "Returns md5sum for a message object of type '<NeuroFrame>"
  "797997e5036eb017437ce855856d3bad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeuroFrame)))
  "Returns md5sum for a message object of type 'NeuroFrame"
  "797997e5036eb017437ce855856d3bad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeuroFrame>)))
  "Returns full string definition for message of type '<NeuroFrame>"
  (cl:format cl:nil "# NeuroFrame Message~%~%# Header~%Header header~%~%# NeuroHeader~%NeuroHeader neuroheader~%~%# Sampling rate~%uint16 sr~%~%# NeuroData~%NeuroDataFloat eeg~%NeuroDataFloat exg~%NeuroDataInt32 tri~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosneuro_msgs/NeuroHeader~%uint32 seq~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataFloat~%NeuroDataInfo info~%float32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInfo~%# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInt32~%NeuroDataInfo info~%int32[] data~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeuroFrame)))
  "Returns full string definition for message of type 'NeuroFrame"
  (cl:format cl:nil "# NeuroFrame Message~%~%# Header~%Header header~%~%# NeuroHeader~%NeuroHeader neuroheader~%~%# Sampling rate~%uint16 sr~%~%# NeuroData~%NeuroDataFloat eeg~%NeuroDataFloat exg~%NeuroDataInt32 tri~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosneuro_msgs/NeuroHeader~%uint32 seq~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataFloat~%NeuroDataInfo info~%float32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInfo~%# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInt32~%NeuroDataInfo info~%int32[] data~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeuroFrame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'neuroheader))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eeg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'exg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeuroFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'NeuroFrame
    (cl:cons ':header (header msg))
    (cl:cons ':neuroheader (neuroheader msg))
    (cl:cons ':sr (sr msg))
    (cl:cons ':eeg (eeg msg))
    (cl:cons ':exg (exg msg))
    (cl:cons ':tri (tri msg))
))
