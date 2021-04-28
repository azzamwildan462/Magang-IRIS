; Auto-generated. Do not edit!


(cl:in-package dasar_ros-msg)


;//! \htmlinclude dua_dan_tiga.msg.html

(cl:defclass <dua_dan_tiga> (roslisp-msg-protocol:ros-message)
  ((tanya
    :reader tanya
    :initarg :tanya
    :type cl:string
    :initform "")
   (jawab
    :reader jawab
    :initarg :jawab
    :type cl:string
    :initform ""))
)

(cl:defclass dua_dan_tiga (<dua_dan_tiga>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dua_dan_tiga>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dua_dan_tiga)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dasar_ros-msg:<dua_dan_tiga> is deprecated: use dasar_ros-msg:dua_dan_tiga instead.")))

(cl:ensure-generic-function 'tanya-val :lambda-list '(m))
(cl:defmethod tanya-val ((m <dua_dan_tiga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dasar_ros-msg:tanya-val is deprecated.  Use dasar_ros-msg:tanya instead.")
  (tanya m))

(cl:ensure-generic-function 'jawab-val :lambda-list '(m))
(cl:defmethod jawab-val ((m <dua_dan_tiga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dasar_ros-msg:jawab-val is deprecated.  Use dasar_ros-msg:jawab instead.")
  (jawab m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dua_dan_tiga>) ostream)
  "Serializes a message object of type '<dua_dan_tiga>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tanya))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tanya))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'jawab))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'jawab))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dua_dan_tiga>) istream)
  "Deserializes a message object of type '<dua_dan_tiga>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tanya) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tanya) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jawab) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'jawab) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dua_dan_tiga>)))
  "Returns string type for a message object of type '<dua_dan_tiga>"
  "dasar_ros/dua_dan_tiga")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dua_dan_tiga)))
  "Returns string type for a message object of type 'dua_dan_tiga"
  "dasar_ros/dua_dan_tiga")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dua_dan_tiga>)))
  "Returns md5sum for a message object of type '<dua_dan_tiga>"
  "4837604f04448f1d12c0d9b2655a598c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dua_dan_tiga)))
  "Returns md5sum for a message object of type 'dua_dan_tiga"
  "4837604f04448f1d12c0d9b2655a598c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dua_dan_tiga>)))
  "Returns full string definition for message of type '<dua_dan_tiga>"
  (cl:format cl:nil "string tanya~%string jawab~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dua_dan_tiga)))
  "Returns full string definition for message of type 'dua_dan_tiga"
  (cl:format cl:nil "string tanya~%string jawab~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dua_dan_tiga>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tanya))
     4 (cl:length (cl:slot-value msg 'jawab))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dua_dan_tiga>))
  "Converts a ROS message object to a list"
  (cl:list 'dua_dan_tiga
    (cl:cons ':tanya (tanya msg))
    (cl:cons ':jawab (jawab msg))
))
