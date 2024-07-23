
(cl:in-package :asdf)

(defsystem "rosneuro_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "NeuroDataFloat" :depends-on ("_package_NeuroDataFloat"))
    (:file "_package_NeuroDataFloat" :depends-on ("_package"))
    (:file "NeuroDataInfo" :depends-on ("_package_NeuroDataInfo"))
    (:file "_package_NeuroDataInfo" :depends-on ("_package"))
    (:file "NeuroDataInt32" :depends-on ("_package_NeuroDataInt32"))
    (:file "_package_NeuroDataInt32" :depends-on ("_package"))
    (:file "NeuroDecoder" :depends-on ("_package_NeuroDecoder"))
    (:file "_package_NeuroDecoder" :depends-on ("_package"))
    (:file "NeuroEvent" :depends-on ("_package_NeuroEvent"))
    (:file "_package_NeuroEvent" :depends-on ("_package"))
    (:file "NeuroFrame" :depends-on ("_package_NeuroFrame"))
    (:file "_package_NeuroFrame" :depends-on ("_package"))
    (:file "NeuroHeader" :depends-on ("_package_NeuroHeader"))
    (:file "_package_NeuroHeader" :depends-on ("_package"))
    (:file "NeuroOutput" :depends-on ("_package_NeuroOutput"))
    (:file "_package_NeuroOutput" :depends-on ("_package"))
  ))