;; Auto-generated. Do not edit!


(when (boundp 'kennedy::cputemp)
  (if (not (find-package "KENNEDY"))
    (make-package "KENNEDY"))
  (shadow 'cputemp (find-package "KENNEDY")))
(unless (find-package "KENNEDY::CPUTEMP")
  (make-package "KENNEDY::CPUTEMP"))

(in-package "ROS")
;;//! \htmlinclude cputemp.msg.html


(defclass kennedy::cputemp
  :super ros::object
  :slots (_cputemp ))

(defmethod kennedy::cputemp
  (:init
   (&key
    ((:cputemp __cputemp) 0.0)
    )
   (send-super :init)
   (setq _cputemp (float __cputemp))
   self)
  (:cputemp
   (&optional __cputemp)
   (if __cputemp (setq _cputemp __cputemp)) _cputemp)
  (:serialization-length
   ()
   (+
    ;; float32 _cputemp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cputemp
       (sys::poke _cputemp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cputemp
     (setq _cputemp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kennedy::cputemp :md5sum-) "2f6d07e987c77d2cff438e6eabfa2bb2")
(setf (get kennedy::cputemp :datatype-) "kennedy/cputemp")
(setf (get kennedy::cputemp :definition-)
      "float32 cputemp

")



(provide :kennedy/cputemp "2f6d07e987c77d2cff438e6eabfa2bb2")


