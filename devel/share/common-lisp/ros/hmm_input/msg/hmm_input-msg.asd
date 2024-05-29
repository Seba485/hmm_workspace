
(cl:in-package :asdf)

(defsystem "hmm_input-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "hmm_input" :depends-on ("_package_hmm_input"))
    (:file "_package_hmm_input" :depends-on ("_package"))
  ))