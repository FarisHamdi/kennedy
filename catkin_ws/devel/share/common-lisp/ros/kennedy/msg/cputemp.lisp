; Auto-generated. Do not edit!


(cl:in-package kennedy-msg)


;//! \htmlinclude cputemp.msg.html

(cl:defclass <cputemp> (roslisp-msg-protocol:ros-message)
  ((cputemp
    :reader cputemp
    :initarg :cputemp
    :type cl:float
    :initform 0.0))
)

(cl:defclass cputemp (<cputemp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cputemp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cputemp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kennedy-msg:<cputemp> is deprecated: use kennedy-msg:cputemp instead.")))

(cl:ensure-generic-function 'cputemp-val :lambda-list '(m))
(cl:defmethod cputemp-val ((m <cputemp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kennedy-msg:cputemp-val is deprecated.  Use kennedy-msg:cputemp instead.")
  (cputemp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cputemp>) ostream)
  "Serializes a message object of type '<cputemp>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cputemp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cputemp>) istream)
  "Deserializes a message object of type '<cputemp>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cputemp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cputemp>)))
  "Returns string type for a message object of type '<cputemp>"
  "kennedy/cputemp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cputemp)))
  "Returns string type for a message object of type 'cputemp"
  "kennedy/cputemp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cputemp>)))
  "Returns md5sum for a message object of type '<cputemp>"
  "2f6d07e987c77d2cff438e6eabfa2bb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cputemp)))
  "Returns md5sum for a message object of type 'cputemp"
  "2f6d07e987c77d2cff438e6eabfa2bb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cputemp>)))
  "Returns full string definition for message of type '<cputemp>"
  (cl:format cl:nil "float32 cputemp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cputemp)))
  "Returns full string definition for message of type 'cputemp"
  (cl:format cl:nil "float32 cputemp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cputemp>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cputemp>))
  "Converts a ROS message object to a list"
  (cl:list 'cputemp
    (cl:cons ':cputemp (cputemp msg))
))
