
(cl:in-package :asdf)

(defsystem "rosneuro_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rosneuro_msgs-msg
)
  :components ((:file "_package")
    (:file "GetAcquisitionInfo" :depends-on ("_package_GetAcquisitionInfo"))
    (:file "_package_GetAcquisitionInfo" :depends-on ("_package"))
  ))