
(cl:in-package :asdf)

(defsystem "ired_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PIDTuning" :depends-on ("_package_PIDTuning"))
    (:file "_package_PIDTuning" :depends-on ("_package"))
  ))