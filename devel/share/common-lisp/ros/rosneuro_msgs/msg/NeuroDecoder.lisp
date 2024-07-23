; Auto-generated. Do not edit!


(cl:in-package rosneuro_msgs-msg)


;//! \htmlinclude NeuroDecoder.msg.html

(cl:defclass <NeuroDecoder> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (classes
    :reader classes
    :initarg :classes
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass NeuroDecoder (<NeuroDecoder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeuroDecoder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeuroDecoder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosneuro_msgs-msg:<NeuroDecoder> is deprecated: use rosneuro_msgs-msg:NeuroDecoder instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NeuroDecoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:type-val is deprecated.  Use rosneuro_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <NeuroDecoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:path-val is deprecated.  Use rosneuro_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'classes-val :lambda-list '(m))
(cl:defmethod classes-val ((m <NeuroDecoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:classes-val is deprecated.  Use rosneuro_msgs-msg:classes instead.")
  (classes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeuroDecoder>) ostream)
  "Serializes a message object of type '<NeuroDecoder>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'classes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeuroDecoder>) istream)
  "Deserializes a message object of type '<NeuroDecoder>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'classes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeuroDecoder>)))
  "Returns string type for a message object of type '<NeuroDecoder>"
  "rosneuro_msgs/NeuroDecoder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeuroDecoder)))
  "Returns string type for a message object of type 'NeuroDecoder"
  "rosneuro_msgs/NeuroDecoder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeuroDecoder>)))
  "Returns md5sum for a message object of type '<NeuroDecoder>"
  "d8400b843e8bd63fce4f038875c96b8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeuroDecoder)))
  "Returns md5sum for a message object of type 'NeuroDecoder"
  "d8400b843e8bd63fce4f038875c96b8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeuroDecoder>)))
  "Returns full string definition for message of type '<NeuroDecoder>"
  (cl:format cl:nil "string type~%string path~%int32[] classes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeuroDecoder)))
  "Returns full string definition for message of type 'NeuroDecoder"
  (cl:format cl:nil "string type~%string path~%int32[] classes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeuroDecoder>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'path))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeuroDecoder>))
  "Converts a ROS message object to a list"
  (cl:list 'NeuroDecoder
    (cl:cons ':type (type msg))
    (cl:cons ':path (path msg))
    (cl:cons ':classes (classes msg))
))
