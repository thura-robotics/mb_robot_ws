; Auto-generated. Do not edit!


(cl:in-package ired_msgs-msg)


;//! \htmlinclude MotorSpeed.msg.html

(cl:defclass <MotorSpeed> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MotorSpeed (<MotorSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ired_msgs-msg:<MotorSpeed> is deprecated: use ired_msgs-msg:MotorSpeed instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MotorSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ired_msgs-msg:speed-val is deprecated.  Use ired_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorSpeed>) ostream)
  "Serializes a message object of type '<MotorSpeed>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'speed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorSpeed>) istream)
  "Deserializes a message object of type '<MotorSpeed>"
  (cl:setf (cl:slot-value msg 'speed) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'speed)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorSpeed>)))
  "Returns string type for a message object of type '<MotorSpeed>"
  "ired_msgs/MotorSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorSpeed)))
  "Returns string type for a message object of type 'MotorSpeed"
  "ired_msgs/MotorSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorSpeed>)))
  "Returns md5sum for a message object of type '<MotorSpeed>"
  "4c73c1913c2e2d9c04e814cd27a27b19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorSpeed)))
  "Returns md5sum for a message object of type 'MotorSpeed"
  "4c73c1913c2e2d9c04e814cd27a27b19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorSpeed>)))
  "Returns full string definition for message of type '<MotorSpeed>"
  (cl:format cl:nil "float64[4] speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorSpeed)))
  "Returns full string definition for message of type 'MotorSpeed"
  (cl:format cl:nil "float64[4] speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorSpeed>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorSpeed
    (cl:cons ':speed (speed msg))
))
