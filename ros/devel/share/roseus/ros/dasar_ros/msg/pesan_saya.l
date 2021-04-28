;; Auto-generated. Do not edit!


(when (boundp 'dasar_ros::pesan_saya)
  (if (not (find-package "DASAR_ROS"))
    (make-package "DASAR_ROS"))
  (shadow 'pesan_saya (find-package "DASAR_ROS")))
(unless (find-package "DASAR_ROS::PESAN_SAYA")
  (make-package "DASAR_ROS::PESAN_SAYA"))

(in-package "ROS")
;;//! \htmlinclude pesan_saya.msg.html


(defclass dasar_ros::pesan_saya
  :super ros::object
  :slots (_nama _nrp _ipk ))

(defmethod dasar_ros::pesan_saya
  (:init
   (&key
    ((:nama __nama) "")
    ((:nrp __nrp) "")
    ((:ipk __ipk) 0.0)
    )
   (send-super :init)
   (setq _nama (string __nama))
   (setq _nrp (string __nrp))
   (setq _ipk (float __ipk))
   self)
  (:nama
   (&optional __nama)
   (if __nama (setq _nama __nama)) _nama)
  (:nrp
   (&optional __nrp)
   (if __nrp (setq _nrp __nrp)) _nrp)
  (:ipk
   (&optional __ipk)
   (if __ipk (setq _ipk __ipk)) _ipk)
  (:serialization-length
   ()
   (+
    ;; string _nama
    4 (length _nama)
    ;; string _nrp
    4 (length _nrp)
    ;; float32 _ipk
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _nama
       (write-long (length _nama) s) (princ _nama s)
     ;; string _nrp
       (write-long (length _nrp) s) (princ _nrp s)
     ;; float32 _ipk
       (sys::poke _ipk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _nama
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nama (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _nrp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nrp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _ipk
     (setq _ipk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dasar_ros::pesan_saya :md5sum-) "42b70ad42e4f827badd05f6f9665ddc7")
(setf (get dasar_ros::pesan_saya :datatype-) "dasar_ros/pesan_saya")
(setf (get dasar_ros::pesan_saya :definition-)
      "string nama
string nrp
float32 ipk
")



(provide :dasar_ros/pesan_saya "42b70ad42e4f827badd05f6f9665ddc7")


