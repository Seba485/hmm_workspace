; Auto-generated. Do not edit!


(cl:in-package rosneuro_msgs-msg)


;//! \htmlinclude NeuroDataFloat.msg.html

(cl:defclass <NeuroDataFloat> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type rosneuro_msgs-msg:NeuroDataInfo
    :initform (cl:make-instance 'rosneuro_msgs-msg:NeuroDataInfo))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NeuroDataFloat (<NeuroDataFloat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeuroDataFloat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeuroDataFloat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosneuro_msgs-msg:<NeuroDataFloat> is deprecated: use rosneuro_msgs-msg:NeuroDataFloat instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <NeuroDataFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:info-val is deprecated.  Use rosneuro_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <NeuroDataFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:data-val is deprecated.  Use rosneuro_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeuroDataFloat>) ostream)
  "Serializes a message object of type '<NeuroDataFloat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeuroDataFloat>) istream)
  "Deserializes a message object of type '<NeuroDataFloat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeuroDataFloat>)))
  "Returns string type for a message object of type '<NeuroDataFloat>"
  "rosneuro_msgs/NeuroDataFloat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeuroDataFloat)))
  "Returns string type for a message object of type 'NeuroDataFloat"
  "rosneuro_msgs/NeuroDataFloat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeuroDataFloat>)))
  "Returns md5sum for a message object of type '<NeuroDataFloat>"
  "32be46802288cbb30589c65e16703676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeuroDataFloat)))
  "Returns md5sum for a message object of type 'NeuroDataFloat"
  "32be46802288cbb30589c65e16703676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeuroDataFloat>)))
  "Returns full string definition for message of type '<NeuroDataFloat>"
  (cl:format cl:nil "NeuroDataInfo info~%float32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInfo~%# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeuroDataFloat)))
  "Returns full string definition for message of type 'NeuroDataFloat"
  (cl:format cl:nil "NeuroDataInfo info~%float32[] data~%~%~%~%================================================================================~%MSG: rosneuro_msgs/NeuroDataInfo~%# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeuroDataFloat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeuroDataFloat>))
  "Converts a ROS message object to a list"
  (cl:list 'NeuroDataFloat
    (cl:cons ':info (info msg))
    (cl:cons ':data (data msg))
))
