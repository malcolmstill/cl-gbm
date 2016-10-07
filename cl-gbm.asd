;;;; cl-gbm.asd

(asdf:defsystem #:cl-gbm
  :description "Describe cl-gbm here"
  :author "Malcolm Still"
  :license "Specify license here"
  :depends-on (#:cffi)
  :serial t
  :components ((:file "package")
               (:file "cl-gbm")))

