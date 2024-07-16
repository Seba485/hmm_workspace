; Auto-generated. Do not edit!


(cl:in-package hmm_sim-msg)


;//! \htmlinclude action_status.msg.html

(cl:defclass <action_status> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass action_status (<action_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hmm_sim-msg:<action_status> is deprecated: use hmm_sim-msg:action_status instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <action_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmm_sim-msg:data-val is deprecated.  Use hmm_sim-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action_status>) ostream)
  "Serializes a message object of type '<action_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action_status>) istream)
  "Deserializes a message object of type '<action_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action_status>)))
  "Returns string type for a message object of type '<action_status>"
  "hmm_sim/action_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_status)))
  "Returns string type for a message object of type 'action_status"
  "hmm_sim/action_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action_status>)))
  "Returns md5sum for a message object of type '<action_status>"
  "b5717fbd1e926acc7d0f3fedd0c81793")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action_status)))
  "Returns md5sum for a message object of type 'action_status"
  "b5717fbd1e926acc7d0f3fedd0c81793")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action_status>)))
  "Returns full string definition for message of type '<action_status>"
  (cl:format cl:nil "std_msgs/Bool data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action_status)))
  "Returns full string definition for message of type 'action_status"
  (cl:format cl:nil "std_msgs/Bool data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action_status>))
  "Converts a ROS message object to a list"
  (cl:list 'action_status
    (cl:cons ':data (data msg))
))
