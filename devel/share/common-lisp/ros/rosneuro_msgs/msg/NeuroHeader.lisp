; Auto-generated. Do not edit!


(cl:in-package rosneuro_msgs-msg)


;//! \htmlinclude NeuroHeader.msg.html

(cl:defclass <NeuroHeader> (roslisp-msg-protocol:ros-message)
  ((seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0))
)

(cl:defclass NeuroHeader (<NeuroHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeuroHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeuroHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosneuro_msgs-msg:<NeuroHeader> is deprecated: use rosneuro_msgs-msg:NeuroHeader instead.")))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <NeuroHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:seq-val is deprecated.  Use rosneuro_msgs-msg:seq instead.")
  (seq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeuroHeader>) ostream)
  "Serializes a message object of type '<NeuroHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeuroHeader>) istream)
  "Deserializes a message object of type '<NeuroHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeuroHeader>)))
  "Returns string type for a message object of type '<NeuroHeader>"
  "rosneuro_msgs/NeuroHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeuroHeader)))
  "Returns string type for a message object of type 'NeuroHeader"
  "rosneuro_msgs/NeuroHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeuroHeader>)))
  "Returns md5sum for a message object of type '<NeuroHeader>"
  "028bf764a68568ec6c5a90be068a2ef7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeuroHeader)))
  "Returns md5sum for a message object of type 'NeuroHeader"
  "028bf764a68568ec6c5a90be068a2ef7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeuroHeader>)))
  "Returns full string definition for message of type '<NeuroHeader>"
  (cl:format cl:nil "uint32 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeuroHeader)))
  "Returns full string definition for message of type 'NeuroHeader"
  (cl:format cl:nil "uint32 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeuroHeader>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeuroHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'NeuroHeader
    (cl:cons ':seq (seq msg))
))
