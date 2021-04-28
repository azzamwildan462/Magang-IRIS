; Auto-generated. Do not edit!


(cl:in-package dasar_ros-msg)


;//! \htmlinclude pesan_saya.msg.html

(cl:defclass <pesan_saya> (roslisp-msg-protocol:ros-message)
  ((nama
    :reader nama
    :initarg :nama
    :type cl:string
    :initform "")
   (nrp
    :reader nrp
    :initarg :nrp
    :type cl:string
    :initform "")
   (ipk
    :reader ipk
    :initarg :ipk
    :type cl:float
    :initform 0.0))
)

(cl:defclass pesan_saya (<pesan_saya>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pesan_saya>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pesan_saya)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dasar_ros-msg:<pesan_saya> is deprecated: use dasar_ros-msg:pesan_saya instead.")))

(cl:ensure-generic-function 'nama-val :lambda-list '(m))
(cl:defmethod nama-val ((m <pesan_saya>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dasar_ros-msg:nama-val is deprecated.  Use dasar_ros-msg:nama instead.")
  (nama m))

(cl:ensure-generic-function 'nrp-val :lambda-list '(m))
(cl:defmethod nrp-val ((m <pesan_saya>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dasar_ros-msg:nrp-val is deprecated.  Use dasar_ros-msg:nrp instead.")
  (nrp m))

(cl:ensure-generic-function 'ipk-val :lambda-list '(m))
(cl:defmethod ipk-val ((m <pesan_saya>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dasar_ros-msg:ipk-val is deprecated.  Use dasar_ros-msg:ipk instead.")
  (ipk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pesan_saya>) ostream)
  "Serializes a message object of type '<pesan_saya>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nama))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nama))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nrp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nrp))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ipk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pesan_saya>) istream)
  "Deserializes a message object of type '<pesan_saya>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nama) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nama) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nrp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nrp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ipk) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pesan_saya>)))
  "Returns string type for a message object of type '<pesan_saya>"
  "dasar_ros/pesan_saya")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pesan_saya)))
  "Returns string type for a message object of type 'pesan_saya"
  "dasar_ros/pesan_saya")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pesan_saya>)))
  "Returns md5sum for a message object of type '<pesan_saya>"
  "42b70ad42e4f827badd05f6f9665ddc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pesan_saya)))
  "Returns md5sum for a message object of type 'pesan_saya"
  "42b70ad42e4f827badd05f6f9665ddc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pesan_saya>)))
  "Returns full string definition for message of type '<pesan_saya>"
  (cl:format cl:nil "string nama~%string nrp~%float32 ipk~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pesan_saya)))
  "Returns full string definition for message of type 'pesan_saya"
  (cl:format cl:nil "string nama~%string nrp~%float32 ipk~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pesan_saya>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'nama))
     4 (cl:length (cl:slot-value msg 'nrp))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pesan_saya>))
  "Converts a ROS message object to a list"
  (cl:list 'pesan_saya
    (cl:cons ':nama (nama msg))
    (cl:cons ':nrp (nrp msg))
    (cl:cons ':ipk (ipk msg))
))
