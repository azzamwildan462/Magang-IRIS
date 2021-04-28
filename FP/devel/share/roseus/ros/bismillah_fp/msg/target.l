;; Auto-generated. Do not edit!


(when (boundp 'bismillah_fp::target)
  (if (not (find-package "BISMILLAH_FP"))
    (make-package "BISMILLAH_FP"))
  (shadow 'target (find-package "BISMILLAH_FP")))
(unless (find-package "BISMILLAH_FP::TARGET")
  (make-package "BISMILLAH_FP::TARGET"))

(in-package "ROS")
;;//! \htmlinclude target.msg.html


(defclass bismillah_fp::target
  :super ros::object
  :slots (_center_bola_x _center_bola_y _target_sudut _kecepatan_x _kecepatan_y _kecepatan_teta ))

(defmethod bismillah_fp::target
  (:init
   (&key
    ((:center_bola_x __center_bola_x) 0)
    ((:center_bola_y __center_bola_y) 0)
    ((:target_sudut __target_sudut) 0)
    ((:kecepatan_x __kecepatan_x) 0)
    ((:kecepatan_y __kecepatan_y) 0)
    ((:kecepatan_teta __kecepatan_teta) 0)
    )
   (send-super :init)
   (setq _center_bola_x (round __center_bola_x))
   (setq _center_bola_y (round __center_bola_y))
   (setq _target_sudut (round __target_sudut))
   (setq _kecepatan_x (round __kecepatan_x))
   (setq _kecepatan_y (round __kecepatan_y))
   (setq _kecepatan_teta (round __kecepatan_teta))
   self)
  (:center_bola_x
   (&optional __center_bola_x)
   (if __center_bola_x (setq _center_bola_x __center_bola_x)) _center_bola_x)
  (:center_bola_y
   (&optional __center_bola_y)
   (if __center_bola_y (setq _center_bola_y __center_bola_y)) _center_bola_y)
  (:target_sudut
   (&optional __target_sudut)
   (if __target_sudut (setq _target_sudut __target_sudut)) _target_sudut)
  (:kecepatan_x
   (&optional __kecepatan_x)
   (if __kecepatan_x (setq _kecepatan_x __kecepatan_x)) _kecepatan_x)
  (:kecepatan_y
   (&optional __kecepatan_y)
   (if __kecepatan_y (setq _kecepatan_y __kecepatan_y)) _kecepatan_y)
  (:kecepatan_teta
   (&optional __kecepatan_teta)
   (if __kecepatan_teta (setq _kecepatan_teta __kecepatan_teta)) _kecepatan_teta)
  (:serialization-length
   ()
   (+
    ;; int64 _center_bola_x
    8
    ;; int64 _center_bola_y
    8
    ;; int64 _target_sudut
    8
    ;; int64 _kecepatan_x
    8
    ;; int64 _kecepatan_y
    8
    ;; int64 _kecepatan_teta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _center_bola_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _center_bola_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _center_bola_x) (= (length (_center_bola_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_center_bola_x . bv) 0) 0) s)
              (write-long (ash (elt (_center_bola_x . bv) 1) -1) s))
             ((and (class _center_bola_x) (= (length (_center_bola_x . bv)) 1)) ;; big1
              (write-long (elt (_center_bola_x . bv) 0) s)
              (write-long (if (>= _center_bola_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _center_bola_x s)(write-long (if (>= _center_bola_x 0) 0 #xffffffff) s)))
     ;; int64 _center_bola_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _center_bola_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _center_bola_y) (= (length (_center_bola_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_center_bola_y . bv) 0) 0) s)
              (write-long (ash (elt (_center_bola_y . bv) 1) -1) s))
             ((and (class _center_bola_y) (= (length (_center_bola_y . bv)) 1)) ;; big1
              (write-long (elt (_center_bola_y . bv) 0) s)
              (write-long (if (>= _center_bola_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _center_bola_y s)(write-long (if (>= _center_bola_y 0) 0 #xffffffff) s)))
     ;; int64 _target_sudut
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _target_sudut (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _target_sudut) (= (length (_target_sudut . bv)) 2)) ;; bignum
              (write-long (ash (elt (_target_sudut . bv) 0) 0) s)
              (write-long (ash (elt (_target_sudut . bv) 1) -1) s))
             ((and (class _target_sudut) (= (length (_target_sudut . bv)) 1)) ;; big1
              (write-long (elt (_target_sudut . bv) 0) s)
              (write-long (if (>= _target_sudut 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _target_sudut s)(write-long (if (>= _target_sudut 0) 0 #xffffffff) s)))
     ;; int64 _kecepatan_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _kecepatan_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _kecepatan_x) (= (length (_kecepatan_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_kecepatan_x . bv) 0) 0) s)
              (write-long (ash (elt (_kecepatan_x . bv) 1) -1) s))
             ((and (class _kecepatan_x) (= (length (_kecepatan_x . bv)) 1)) ;; big1
              (write-long (elt (_kecepatan_x . bv) 0) s)
              (write-long (if (>= _kecepatan_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _kecepatan_x s)(write-long (if (>= _kecepatan_x 0) 0 #xffffffff) s)))
     ;; int64 _kecepatan_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _kecepatan_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _kecepatan_y) (= (length (_kecepatan_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_kecepatan_y . bv) 0) 0) s)
              (write-long (ash (elt (_kecepatan_y . bv) 1) -1) s))
             ((and (class _kecepatan_y) (= (length (_kecepatan_y . bv)) 1)) ;; big1
              (write-long (elt (_kecepatan_y . bv) 0) s)
              (write-long (if (>= _kecepatan_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _kecepatan_y s)(write-long (if (>= _kecepatan_y 0) 0 #xffffffff) s)))
     ;; int64 _kecepatan_teta
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _kecepatan_teta (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _kecepatan_teta) (= (length (_kecepatan_teta . bv)) 2)) ;; bignum
              (write-long (ash (elt (_kecepatan_teta . bv) 0) 0) s)
              (write-long (ash (elt (_kecepatan_teta . bv) 1) -1) s))
             ((and (class _kecepatan_teta) (= (length (_kecepatan_teta . bv)) 1)) ;; big1
              (write-long (elt (_kecepatan_teta . bv) 0) s)
              (write-long (if (>= _kecepatan_teta 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _kecepatan_teta s)(write-long (if (>= _kecepatan_teta 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _center_bola_x
#+(or :alpha :irix6 :x86_64)
      (setf _center_bola_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _center_bola_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _center_bola_y
#+(or :alpha :irix6 :x86_64)
      (setf _center_bola_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _center_bola_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _target_sudut
#+(or :alpha :irix6 :x86_64)
      (setf _target_sudut (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _target_sudut (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _kecepatan_x
#+(or :alpha :irix6 :x86_64)
      (setf _kecepatan_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _kecepatan_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _kecepatan_y
#+(or :alpha :irix6 :x86_64)
      (setf _kecepatan_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _kecepatan_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _kecepatan_teta
#+(or :alpha :irix6 :x86_64)
      (setf _kecepatan_teta (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _kecepatan_teta (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get bismillah_fp::target :md5sum-) "72fecc2344924574cece529ec5202e24")
(setf (get bismillah_fp::target :datatype-) "bismillah_fp/target")
(setf (get bismillah_fp::target :definition-)
      "int64 center_bola_x
int64 center_bola_y
int64 target_sudut
int64 kecepatan_x
int64 kecepatan_y
int64 kecepatan_teta
")



(provide :bismillah_fp/target "72fecc2344924574cece529ec5202e24")


