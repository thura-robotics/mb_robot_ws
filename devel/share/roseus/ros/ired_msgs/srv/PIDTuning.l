;; Auto-generated. Do not edit!


(when (boundp 'ired_msgs::PIDTuning)
  (if (not (find-package "IRED_MSGS"))
    (make-package "IRED_MSGS"))
  (shadow 'PIDTuning (find-package "IRED_MSGS")))
(unless (find-package "IRED_MSGS::PIDTUNING")
  (make-package "IRED_MSGS::PIDTUNING"))
(unless (find-package "IRED_MSGS::PIDTUNINGREQUEST")
  (make-package "IRED_MSGS::PIDTUNINGREQUEST"))
(unless (find-package "IRED_MSGS::PIDTUNINGRESPONSE")
  (make-package "IRED_MSGS::PIDTUNINGRESPONSE"))

(in-package "ROS")





(defclass ired_msgs::PIDTuningRequest
  :super ros::object
  :slots (_motor _kp _ki _kd ))

(defmethod ired_msgs::PIDTuningRequest
  (:init
   (&key
    ((:motor __motor) "")
    ((:kp __kp) 0.0)
    ((:ki __ki) 0.0)
    ((:kd __kd) 0.0)
    )
   (send-super :init)
   (setq _motor (string __motor))
   (setq _kp (float __kp))
   (setq _ki (float __ki))
   (setq _kd (float __kd))
   self)
  (:motor
   (&optional __motor)
   (if __motor (setq _motor __motor)) _motor)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; string _motor
    4 (length _motor)
    ;; float64 _kp
    8
    ;; float64 _ki
    8
    ;; float64 _kd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _motor
       (write-long (length _motor) s) (princ _motor s)
     ;; float64 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ki
       (sys::poke _ki (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _motor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _motor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _kp
     (setq _kp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ki
     (setq _ki (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kd
     (setq _kd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ired_msgs::PIDTuningResponse
  :super ros::object
  :slots (_status ))

(defmethod ired_msgs::PIDTuningResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ired_msgs::PIDTuning
  :super ros::object
  :slots ())

(setf (get ired_msgs::PIDTuning :md5sum-) "2067c5e03a8990aa0c4402e6f0d5da4b")
(setf (get ired_msgs::PIDTuning :datatype-) "ired_msgs/PIDTuning")
(setf (get ired_msgs::PIDTuning :request) ired_msgs::PIDTuningRequest)
(setf (get ired_msgs::PIDTuning :response) ired_msgs::PIDTuningResponse)

(defmethod ired_msgs::PIDTuningRequest
  (:response () (instance ired_msgs::PIDTuningResponse :init)))

(setf (get ired_msgs::PIDTuningRequest :md5sum-) "2067c5e03a8990aa0c4402e6f0d5da4b")
(setf (get ired_msgs::PIDTuningRequest :datatype-) "ired_msgs/PIDTuningRequest")
(setf (get ired_msgs::PIDTuningRequest :definition-)
      "string motor
float64 kp
float64 ki
float64 kd
---
bool status
")

(setf (get ired_msgs::PIDTuningResponse :md5sum-) "2067c5e03a8990aa0c4402e6f0d5da4b")
(setf (get ired_msgs::PIDTuningResponse :datatype-) "ired_msgs/PIDTuningResponse")
(setf (get ired_msgs::PIDTuningResponse :definition-)
      "string motor
float64 kp
float64 ki
float64 kd
---
bool status
")



(provide :ired_msgs/PIDTuning "2067c5e03a8990aa0c4402e6f0d5da4b")


