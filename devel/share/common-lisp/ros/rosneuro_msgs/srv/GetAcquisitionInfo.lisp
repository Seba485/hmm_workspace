; Auto-generated. Do not edit!


(cl:in-package rosneuro_msgs-srv)


;//! \htmlinclude GetAcquisitionInfo-request.msg.html

(cl:defclass <GetAcquisitionInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAcquisitionInfo-request (<GetAcquisitionInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAcquisitionInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAcquisitionInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosneuro_msgs-srv:<GetAcquisitionInfo-request> is deprecated: use rosneuro_msgs-srv:GetAcquisitionInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAcquisitionInfo-request>) ostream)
  "Serializes a message object of type '<GetAcquisitionInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAcquisitionInfo-request>) istream)
  "Deserializes a message object of type '<GetAcquisitionInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAcquisitionInfo-request>)))
  "Returns string type for a service object of type '<GetAcquisitionInfo-request>"
  "rosneuro_msgs/GetAcquisitionInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAcquisitionInfo-request)))
  "Returns string type for a service object of type 'GetAcquisitionInfo-request"
  "rosneuro_msgs/GetAcquisitionInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAcquisitionInfo-request>)))
  "Returns md5sum for a message object of type '<GetAcquisitionInfo-request>"
  "8cf1aae8f1ae02fdc8775b1362badac5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAcquisitionInfo-request)))
  "Returns md5sum for a message object of type 'GetAcquisitionInfo-request"
  "8cf1aae8f1ae02fdc8775b1362badac5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAcquisitionInfo-request>)))
  "Returns full string definition for message of type '<GetAcquisitionInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAcquisitionInfo-request)))
  "Returns full string definition for message of type 'GetAcquisitionInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAcquisitionInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAcquisitionInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAcquisitionInfo-request
))
;//! \htmlinclude GetAcquisitionInfo-response.msg.html

(cl:defclass <GetAcquisitionInfo-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (device_model
    :reader device_model
    :initarg :device_model
    :type cl:string
    :initform "")
   (device_id
    :reader device_id
    :initarg :device_id
    :type cl:string
    :initform "")
   (frame
    :reader frame
    :initarg :frame
    :type rosneuro_msgs-msg:NeuroFrame
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroFrame)))
)

(cl:defclass GetAcquisitionInfo-response (<GetAcquisitionInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAcquisitionInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAcquisitionInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosneuro_msgs-srv:<GetAcquisitionInfo-response> is deprecated: use rosneuro_msgs-srv:GetAcquisitionInfo-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetAcquisitionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-srv:result-val is deprecated.  Use rosneuro_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'device_model-val :lambda-list '(m))
(cl:defmethod device_model-val ((m <GetAcquisitionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-srv:device_model-val is deprecated.  Use rosneuro_msgs-srv:device_model instead.")
  (device_model m))

(cl:ensure-generic-function 'device_id-val :lambda-list '(m))
(cl:defmethod device_id-val ((m <GetAcquisitionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-srv:device_id-val is deprecated.  Use rosneuro_msgs-srv:device_id instead.")
  (device_id m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <GetAcquisitionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-srv:frame-val is deprecated.  Use rosneuro_msgs-srv:frame instead.")
  (frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAcquisitionInfo-response>) ostream)
  "Serializes a message object of type '<GetAcquisitionInfo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_model))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frame) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAcquisitionInfo-response>) istream)
  "Deserializes a message object of type '<GetAcquisitionInfo-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frame) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAcquisitionInfo-response>)))
  "Returns string type for a service object of type '<GetAcquisitionInfo-response>"
  "rosneuro_msgs/GetAcquisitionInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAcquisitionInfo-response)))
  "Returns string type for a service object of type 'GetAcquisitionInfo-response"
  "rosneuro_msgs/GetAcquisitionInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAcquisitionInfo-response>)))
  "Returns md5sum for a message object of type '<GetAcquisitionInfo-response>"
  "8cf1aae8f1ae02fdc8775b1362badac5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAcquisitionInfo-response)))
  "Returns md5sum for a message object of type 'GetAcquisitionInfo-response"
  "8cf1aae8f1ae02fdc8775b1362badac5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAcquisitionInfo-response>)))
  "Returns full string definition for message of type '<GetAcquisitionInfo-response>"
  (cl:format cl:nil "bool            result~%~%string device_model~%string device_id~%~%NeuroFrame frame~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroFrame~%# NeuroFrame Message~%~%# Header~%Header header~%~%# NeuroHeader~%NeuroHeader neuroheader~%~%# Sampling rate~%uint16 sr~%~%# NeuroData~%NeuroDataFloat eeg~%NeuroDataFloat exg~%NeuroDataInt32 tri~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosneuro_msgs/NeuroHeader~%uint32 seq~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataFloat~%NeuroDataInfo info~%float32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInfo~%# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInt32~%NeuroDataInfo info~%int32[] data~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAcquisitionInfo-response)))
  "Returns full string definition for message of type 'GetAcquisitionInfo-response"
  (cl:format cl:nil "bool            result~%~%string device_model~%string device_id~%~%NeuroFrame frame~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroFrame~%# NeuroFrame Message~%~%# Header~%Header header~%~%# NeuroHeader~%NeuroHeader neuroheader~%~%# Sampling rate~%uint16 sr~%~%# NeuroData~%NeuroDataFloat eeg~%NeuroDataFloat exg~%NeuroDataInt32 tri~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosneuro_msgs/NeuroHeader~%uint32 seq~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataFloat~%NeuroDataInfo info~%float32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInfo~%# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInt32~%NeuroDataInfo info~%int32[] data~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAcquisitionInfo-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'device_model))
     4 (cl:length (cl:slot-value msg 'device_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAcquisitionInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAcquisitionInfo-response
    (cl:cons ':result (result msg))
    (cl:cons ':device_model (device_model msg))
    (cl:cons ':device_id (device_id msg))
    (cl:cons ':frame (frame msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAcquisitionInfo)))
  'GetAcquisitionInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAcquisitionInfo)))
  'GetAcquisitionInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAcquisitionInfo)))
  "Returns string type for a service object of type '<GetAcquisitionInfo>"
  "rosneuro_msgs/GetAcquisitionInfo")