; Auto-generated. Do not edit!


(cl:in-package rosneuro_msgs-msg)


;//! \htmlinclude NeuroDataInfo.msg.html

(cl:defclass <NeuroDataInfo> (roslisp-msg-protocol:ros-message)
  ((nsamples
    :reader nsamples
    :initarg :nsamples
    :type cl:fixnum
    :initform 0)
   (nchannels
    :reader nchannels
    :initarg :nchannels
    :type cl:fixnum
    :initform 0)
   (stride
    :reader stride
    :initarg :stride
    :type cl:fixnum
    :initform 0)
   (unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform "")
   (transducter
    :reader transducter
    :initarg :transducter
    :type cl:string
    :initform "")
   (prefiltering
    :reader prefiltering
    :initarg :prefiltering
    :type cl:string
    :initform "")
   (isint
    :reader isint
    :initarg :isint
    :type cl:fixnum
    :initform 0)
   (minmax
    :reader minmax
    :initarg :minmax
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (labels
    :reader labels
    :initarg :labels
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass NeuroDataInfo (<NeuroDataInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeuroDataInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeuroDataInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosneuro_msgs-msg:<NeuroDataInfo> is deprecated: use rosneuro_msgs-msg:NeuroDataInfo instead.")))

(cl:ensure-generic-function 'nsamples-val :lambda-list '(m))
(cl:defmethod nsamples-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:nsamples-val is deprecated.  Use rosneuro_msgs-msg:nsamples instead.")
  (nsamples m))

(cl:ensure-generic-function 'nchannels-val :lambda-list '(m))
(cl:defmethod nchannels-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:nchannels-val is deprecated.  Use rosneuro_msgs-msg:nchannels instead.")
  (nchannels m))

(cl:ensure-generic-function 'stride-val :lambda-list '(m))
(cl:defmethod stride-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:stride-val is deprecated.  Use rosneuro_msgs-msg:stride instead.")
  (stride m))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:unit-val is deprecated.  Use rosneuro_msgs-msg:unit instead.")
  (unit m))

(cl:ensure-generic-function 'transducter-val :lambda-list '(m))
(cl:defmethod transducter-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:transducter-val is deprecated.  Use rosneuro_msgs-msg:transducter instead.")
  (transducter m))

(cl:ensure-generic-function 'prefiltering-val :lambda-list '(m))
(cl:defmethod prefiltering-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:prefiltering-val is deprecated.  Use rosneuro_msgs-msg:prefiltering instead.")
  (prefiltering m))

(cl:ensure-generic-function 'isint-val :lambda-list '(m))
(cl:defmethod isint-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:isint-val is deprecated.  Use rosneuro_msgs-msg:isint instead.")
  (isint m))

(cl:ensure-generic-function 'minmax-val :lambda-list '(m))
(cl:defmethod minmax-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:minmax-val is deprecated.  Use rosneuro_msgs-msg:minmax instead.")
  (minmax m))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <NeuroDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosneuro_msgs-msg:labels-val is deprecated.  Use rosneuro_msgs-msg:labels instead.")
  (labels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeuroDataInfo>) ostream)
  "Serializes a message object of type '<NeuroDataInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nsamples)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nsamples)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nchannels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nchannels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stride)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stride)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transducter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transducter))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prefiltering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prefiltering))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isint)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'minmax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'minmax))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'labels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeuroDataInfo>) istream)
  "Deserializes a message object of type '<NeuroDataInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nsamples)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nsamples)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nchannels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nchannels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stride)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stride)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transducter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transducter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prefiltering) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prefiltering) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isint)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'minmax) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'minmax)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeuroDataInfo>)))
  "Returns string type for a message object of type '<NeuroDataInfo>"
  "rosneuro_msgs/NeuroDataInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeuroDataInfo)))
  "Returns string type for a message object of type 'NeuroDataInfo"
  "rosneuro_msgs/NeuroDataInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeuroDataInfo>)))
  "Returns md5sum for a message object of type '<NeuroDataInfo>"
  "6662e2f96240b54d66e954d119b2ab01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeuroDataInfo)))
  "Returns md5sum for a message object of type 'NeuroDataInfo"
  "6662e2f96240b54d66e954d119b2ab01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeuroDataInfo>)))
  "Returns full string definition for message of type '<NeuroDataInfo>"
  (cl:format cl:nil "# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeuroDataInfo)))
  "Returns full string definition for message of type 'NeuroDataInfo"
  (cl:format cl:nil "# NeuroDataInfo Message~%~%uint16    nsamples~%uint16    nchannels~%uint16    stride~%string    unit~%string    transducter~%string    prefiltering		# Hardware prefiltering~%uint8     isint~%float64[] minmax~%string[]  labels				# Labels of channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeuroDataInfo>))
  (cl:+ 0
     2
     2
     2
     4 (cl:length (cl:slot-value msg 'unit))
     4 (cl:length (cl:slot-value msg 'transducter))
     4 (cl:length (cl:slot-value msg 'prefiltering))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'minmax) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeuroDataInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NeuroDataInfo
    (cl:cons ':nsamples (nsamples msg))
    (cl:cons ':nchannels (nchannels msg))
    (cl:cons ':stride (stride msg))
    (cl:cons ':unit (unit msg))
    (cl:cons ':transducter (transducter msg))
    (cl:cons ':prefiltering (prefiltering msg))
    (cl:cons ':isint (isint msg))
    (cl:cons ':minmax (minmax msg))
    (cl:cons ':labels (labels msg))
))
