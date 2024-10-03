;; Auto-generated. Do not edit!


(when (boundp 'ired_msgs::MotorSpeed)
  (if (not (find-package "IRED_MSGS"))
    (make-package "IRED_MSGS"))
  (shadow 'MotorSpeed (find-package "IRED_MSGS")))
(unless (find-package "IRED_MSGS::MOTORSPEED")
  (make-package "IRED_MSGS::MOTORSPEED"))

(in-package "ROS")
;;//! \htmlinclude MotorSpeed.msg.html


(defclass ired_msgs::MotorSpeed
  :super ros::object
  :slots (_speed ))

(defmethod ired_msgs::MotorSpeed
  (:init
   (&key
    ((:speed __speed) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _speed __speed)
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64[4] _speed
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[4] _speed
     (dotimes (i 4)
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[4] _speed
   (dotimes (i (length _speed))
     (setf (elt _speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get ired_msgs::MotorSpeed :md5sum-) "4c73c1913c2e2d9c04e814cd27a27b19")
(setf (get ired_msgs::MotorSpeed :datatype-) "ired_msgs/MotorSpeed")
(setf (get ired_msgs::MotorSpeed :definition-)
      "float64[4] speed
")



(provide :ired_msgs/MotorSpeed "4c73c1913c2e2d9c04e814cd27a27b19")


