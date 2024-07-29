; Auto-generated. Do not edit!


(cl:in-package hmm_sim-msg)


;//! \htmlinclude targethit_msg.msg.html

(cl:defclass <targethit_msg> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass targethit_msg (<targethit_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <targethit_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'targethit_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hmm_sim-msg:<targethit_msg> is deprecated: use hmm_sim-msg:targethit_msg instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <targethit_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmm_sim-msg:data-val is deprecated.  Use hmm_sim-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <targethit_msg>) ostream)
  "Serializes a message object of type '<targethit_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <targethit_msg>) istream)
  "Deserializes a message object of type '<targethit_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<targethit_msg>)))
  "Returns string type for a message object of type '<targethit_msg>"
  "hmm_sim/targethit_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'targethit_msg)))
  "Returns string type for a message object of type 'targethit_msg"
  "hmm_sim/targethit_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<targethit_msg>)))
  "Returns md5sum for a message object of type '<targethit_msg>"
  "ced17149d0dab0ac93acae0e222e30ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'targethit_msg)))
  "Returns md5sum for a message object of type 'targethit_msg"
  "ced17149d0dab0ac93acae0e222e30ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<targethit_msg>)))
  "Returns full string definition for message of type '<targethit_msg>"
  (cl:format cl:nil "std_msgs/Int32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'targethit_msg)))
  "Returns full string definition for message of type 'targethit_msg"
  (cl:format cl:nil "std_msgs/Int32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <targethit_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <targethit_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'targethit_msg
    (cl:cons ':data (data msg))
))
