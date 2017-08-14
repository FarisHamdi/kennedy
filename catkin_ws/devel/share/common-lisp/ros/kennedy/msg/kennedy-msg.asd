
(cl:in-package :asdf)

(defsystem "kennedy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cputemp" :depends-on ("_package_cputemp"))
    (:file "_package_cputemp" :depends-on ("_package"))
  ))