
(cl:in-package :asdf)

(defsystem "bismillah_fp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "koordinat_bola" :depends-on ("_package_koordinat_bola"))
    (:file "_package_koordinat_bola" :depends-on ("_package"))
    (:file "target" :depends-on ("_package_target"))
    (:file "_package_target" :depends-on ("_package"))
  ))