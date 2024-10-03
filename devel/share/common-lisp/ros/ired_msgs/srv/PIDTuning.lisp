; Auto-generated. Do not edit!


(cl:in-package ired_msgs-srv)


;//! \htmlinclude PIDTuning-request.msg.html

(cl:defclass <PIDTuning-request> (roslisp-msg-protocol:ros-message)
  ((motor
    :reader motor
    :initarg :motor
    :type cl:string
    :initform "")
   (kp
    :reader kp
    :initarg :kp
    :type cl:float
    :initform 0.0)
   (ki
    :reader ki
    :initarg :ki
    :type cl:float
    :initform 0.0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:float
    :initform 0.0))
)

(cl:defclass PIDTuning-request (<PIDTuning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PIDTuning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PIDTuning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ired_msgs-srv:<PIDTuning-request> is deprecated: use ired_msgs-srv:PIDTuning-request instead.")))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <PIDTuning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ired_msgs-srv:motor-val is deprecated.  Use ired_msgs-srv:motor instead.")
  (motor m))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <PIDTuning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ired_msgs-srv:kp-val is deprecated.  Use ired_msgs-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'ki-val :lambda-list '(m))
(cl:defmethod ki-val ((m <PIDTuning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ired_msgs-srv:ki-val is deprecated.  Use ired_msgs-srv:ki instead.")
  (ki m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <PIDTuning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ired_msgs-srv:kd-val is deprecated.  Use ired_msgs-srv:kd instead.")
  (kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PIDTuning-request>) ostream)
  "Serializes a message object of type '<PIDTuning-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motor))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ki))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PIDTuning-request>) istream)
  "Deserializes a message object of type '<PIDTuning-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ki) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PIDTuning-request>)))
  "Returns string type for a service object of type '<PIDTuning-request>"
  "ired_msgs/PIDTuningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDTuning-request)))
  "Returns string type for a service object of type 'PIDTuning-request"
  "ired_msgs/PIDTuningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PIDTuning-request>)))
  "Returns md5sum for a message object of type '<PIDTuning-request>"
  "2067c5e03a8990aa0c4402e6f0d5da4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PIDTuning-request)))
  "Returns md5sum for a message object of type 'PIDTuning-request"
  "2067c5e03a8990aa0c4402e6f0d5da4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PIDTuning-request>)))
  "Returns full string definition for message of type '<PIDTuning-request>"
  (cl:format cl:nil "string motor~%float64 kp~%float64 ki~%float64 kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PIDTuning-request)))
  "Returns full string definition for message of type 'PIDTuning-request"
  (cl:format cl:nil "string motor~%float64 kp~%float64 ki~%float64 kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PIDTuning-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'motor))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PIDTuning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PIDTuning-request
    (cl:cons ':motor (motor msg))
    (cl:cons ':kp (kp msg))
    (cl:cons ':ki (ki msg))
    (cl:cons ':kd (kd msg))
))
;//! \htmlinclude PIDTuning-response.msg.html

(cl:defclass <PIDTuning-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PIDTuning-response (<PIDTuning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PIDTuning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PIDTuning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ired_msgs-srv:<PIDTuning-response> is deprecated: use ired_msgs-srv:PIDTuning-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PIDTuning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ired_msgs-srv:status-val is deprecated.  Use ired_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PIDTuning-response>) ostream)
  "Serializes a message object of type '<PIDTuning-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PIDTuning-response>) istream)
  "Deserializes a message object of type '<PIDTuning-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PIDTuning-response>)))
  "Returns string type for a service object of type '<PIDTuning-response>"
  "ired_msgs/PIDTuningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDTuning-response)))
  "Returns string type for a service object of type 'PIDTuning-response"
  "ired_msgs/PIDTuningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PIDTuning-response>)))
  "Returns md5sum for a message object of type '<PIDTuning-response>"
  "2067c5e03a8990aa0c4402e6f0d5da4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PIDTuning-response)))
  "Returns md5sum for a message object of type 'PIDTuning-response"
  "2067c5e03a8990aa0c4402e6f0d5da4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PIDTuning-response>)))
  "Returns full string definition for message of type '<PIDTuning-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PIDTuning-response)))
  "Returns full string definition for message of type 'PIDTuning-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PIDTuning-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PIDTuning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PIDTuning-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PIDTuning)))
  'PIDTuning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PIDTuning)))
  'PIDTuning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDTuning)))
  "Returns string type for a service object of type '<PIDTuning>"
  "ired_msgs/PIDTuning")