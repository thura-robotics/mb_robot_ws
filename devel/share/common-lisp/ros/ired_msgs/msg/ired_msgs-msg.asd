
(cl:in-package :asdf)

(defsystem "ired_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IMUData" :depends-on ("_package_IMUData"))
    (:file "_package_IMUData" :depends-on ("_package"))
    (:file "MotorControl" :depends-on ("_package_MotorControl"))
    (:file "_package_MotorControl" :depends-on ("_package"))
    (:file "MotorData" :depends-on ("_package_MotorData"))
    (:file "_package_MotorData" :depends-on ("_package"))
    (:file "MotorSpeed" :depends-on ("_package_MotorSpeed"))
    (:file "_package_MotorSpeed" :depends-on ("_package"))
  ))