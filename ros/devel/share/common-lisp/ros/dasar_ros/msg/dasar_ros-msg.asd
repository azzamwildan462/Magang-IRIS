
(cl:in-package :asdf)

(defsystem "dasar_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dua_dan_tiga" :depends-on ("_package_dua_dan_tiga"))
    (:file "_package_dua_dan_tiga" :depends-on ("_package"))
    (:file "pesan_saya" :depends-on ("_package_pesan_saya"))
    (:file "_package_pesan_saya" :depends-on ("_package"))
  ))