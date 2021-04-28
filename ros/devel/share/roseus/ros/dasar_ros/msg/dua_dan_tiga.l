;; Auto-generated. Do not edit!


(when (boundp 'dasar_ros::dua_dan_tiga)
  (if (not (find-package "DASAR_ROS"))
    (make-package "DASAR_ROS"))
  (shadow 'dua_dan_tiga (find-package "DASAR_ROS")))
(unless (find-package "DASAR_ROS::DUA_DAN_TIGA")
  (make-package "DASAR_ROS::DUA_DAN_TIGA"))

(in-package "ROS")
;;//! \htmlinclude dua_dan_tiga.msg.html


(defclass dasar_ros::dua_dan_tiga
  :super ros::object
  :slots (_tanya _jawab ))

(defmethod dasar_ros::dua_dan_tiga
  (:init
   (&key
    ((:tanya __tanya) "")
    ((:jawab __jawab) "")
    )
   (send-super :init)
   (setq _tanya (string __tanya))
   (setq _jawab (string __jawab))
   self)
  (:tanya
   (&optional __tanya)
   (if __tanya (setq _tanya __tanya)) _tanya)
  (:jawab
   (&optional __jawab)
   (if __jawab (setq _jawab __jawab)) _jawab)
  (:serialization-length
   ()
   (+
    ;; string _tanya
    4 (length _tanya)
    ;; string _jawab
    4 (length _jawab)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tanya
       (write-long (length _tanya) s) (princ _tanya s)
     ;; string _jawab
       (write-long (length _jawab) s) (princ _jawab s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tanya
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tanya (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _jawab
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _jawab (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dasar_ros::dua_dan_tiga :md5sum-) "4837604f04448f1d12c0d9b2655a598c")
(setf (get dasar_ros::dua_dan_tiga :datatype-) "dasar_ros/dua_dan_tiga")
(setf (get dasar_ros::dua_dan_tiga :definition-)
      "string tanya
string jawab
")



(provide :dasar_ros/dua_dan_tiga "4837604f04448f1d12c0d9b2655a598c")


