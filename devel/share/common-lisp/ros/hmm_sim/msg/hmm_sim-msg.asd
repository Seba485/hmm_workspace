
(cl:in-package :asdf)

(defsystem "hmm_sim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "classifier_output" :depends-on ("_package_classifier_output"))
    (:file "_package_classifier_output" :depends-on ("_package"))
    (:file "reset_command" :depends-on ("_package_reset_command"))
    (:file "_package_reset_command" :depends-on ("_package"))
    (:file "traversability_output" :depends-on ("_package_traversability_output"))
    (:file "_package_traversability_output" :depends-on ("_package"))
  ))