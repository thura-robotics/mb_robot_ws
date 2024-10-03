;; Auto-generated. Do not edit!


(when (boundp 'ired_msgs::MotorControl)
  (if (not (find-package "IRED_MSGS"))
    (make-package "IRED_MSGS"))
  (shadow 'MotorControl (find-package "IRED_MSGS")))
(unless (find-package "IRED_MSGS::MOTORCONTROL")
  (make-package "IRED_MSGS::MOTORCONTROL"))

(in-package "ROS")
;;//! \htmlinclude MotorControl.msg.html


(defclass ired_msgs::MotorControl
  :super ros::object
  :slots (_speed _pid_motor_front_left _pid_motor_front_right _pid_motor_rear_left _pid_motor_rear_right ))

(defmethod ired_msgs::MotorControl
  (:init
   (&key
    ((:speed __speed) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:pid_motor_front_left __pid_motor_front_left) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:pid_motor_front_right __pid_motor_front_right) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:pid_motor_rear_left __pid_motor_rear_left) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:pid_motor_rear_right __pid_motor_rear_right) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _speed __speed)
   (setq _pid_motor_front_left __pid_motor_front_left)
   (setq _pid_motor_front_right __pid_motor_front_right)
   (setq _pid_motor_rear_left __pid_motor_rear_left)
   (setq _pid_motor_rear_right __pid_motor_rear_right)
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:pid_motor_front_left
   (&optional __pid_motor_front_left)
   (if __pid_motor_front_left (setq _pid_motor_front_left __pid_motor_front_left)) _pid_motor_front_left)
  (:pid_motor_front_right
   (&optional __pid_motor_front_right)
   (if __pid_motor_front_right (setq _pid_motor_front_right __pid_motor_front_right)) _pid_motor_front_right)
  (:pid_motor_rear_left
   (&optional __pid_motor_rear_left)
   (if __pid_motor_rear_left (setq _pid_motor_rear_left __pid_motor_rear_left)) _pid_motor_rear_left)
  (:pid_motor_rear_right
   (&optional __pid_motor_rear_right)
   (if __pid_motor_rear_right (setq _pid_motor_rear_right __pid_motor_rear_right)) _pid_motor_rear_right)
  (:serialization-length
   ()
   (+
    ;; float64[4] _speed
    (* 8    4)
    ;; float64[3] _pid_motor_front_left
    (* 8    3)
    ;; float64[3] _pid_motor_front_right
    (* 8    3)
    ;; float64[3] _pid_motor_rear_left
    (* 8    3)
    ;; float64[3] _pid_motor_rear_right
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[4] _speed
     (dotimes (i 4)
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _pid_motor_front_left
     (dotimes (i 3)
       (sys::poke (elt _pid_motor_front_left i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _pid_motor_front_right
     (dotimes (i 3)
       (sys::poke (elt _pid_motor_front_right i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _pid_motor_rear_left
     (dotimes (i 3)
       (sys::poke (elt _pid_motor_rear_left i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _pid_motor_rear_right
     (dotimes (i 3)
       (sys::poke (elt _pid_motor_rear_right i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[4] _speed
   (dotimes (i (length _speed))
     (setf (elt _speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _pid_motor_front_left
   (dotimes (i (length _pid_motor_front_left))
     (setf (elt _pid_motor_front_left i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _pid_motor_front_right
   (dotimes (i (length _pid_motor_front_right))
     (setf (elt _pid_motor_front_right i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _pid_motor_rear_left
   (dotimes (i (length _pid_motor_rear_left))
     (setf (elt _pid_motor_rear_left i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _pid_motor_rear_right
   (dotimes (i (length _pid_motor_rear_right))
     (setf (elt _pid_motor_rear_right i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get ired_msgs::MotorControl :md5sum-) "05f5241cd8b6cd92a2aaba4f953638ba")
(setf (get ired_msgs::MotorControl :datatype-) "ired_msgs/MotorControl")
(setf (get ired_msgs::MotorControl :definition-)
      "float64[4] speed
float64[3] pid_motor_front_left
float64[3] pid_motor_front_right
float64[3] pid_motor_rear_left
float64[3] pid_motor_rear_right
")



(provide :ired_msgs/MotorControl "05f5241cd8b6cd92a2aaba4f953638ba")


