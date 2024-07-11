; Auto-generated. Do not edit!


(cl:in-package hmm_sim-msg)


;//! \htmlinclude reset_command.msg.html

(cl:defclass <reset_command> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass reset_command (<reset_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reset_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reset_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hmm_sim-msg:<reset_command> is deprecated: use hmm_sim-msg:reset_command instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <reset_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmm_sim-msg:data-val is deprecated.  Use hmm_sim-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reset_command>) ostream)
  "Serializes a message object of type '<reset_command>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reset_command>) istream)
  "Deserializes a message object of type '<reset_command>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reset_command>)))
  "Returns string type for a message object of type '<reset_command>"
  "hmm_sim/reset_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reset_command)))
  "Returns string type for a message object of type 'reset_command"
  "hmm_sim/reset_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reset_command>)))
  "Returns md5sum for a message object of type '<reset_command>"
  "b5717fbd1e926acc7d0f3fedd0c81793")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reset_command)))
  "Returns md5sum for a message object of type 'reset_command"
  "b5717fbd1e926acc7d0f3fedd0c81793")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reset_command>)))
  "Returns full string definition for message of type '<reset_command>"
  (cl:format cl:nil "std_msgs/Bool data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reset_command)))
  "Returns full string definition for message of type 'reset_command"
  (cl:format cl:nil "std_msgs/Bool data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reset_command>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reset_command>))
  "Converts a ROS message object to a list"
  (cl:list 'reset_command
    (cl:cons ':data (data msg))
))
