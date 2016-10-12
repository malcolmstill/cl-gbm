;;;; cl-gbm.asd

(asdf:defsystem #:cl-gbm
  :description "Common Lisp wrapper for libgbm"
  :author "Malcolm Still"
  :license "BSD3"
  :depends-on (#:cffi)
  :serial t
  :components ((:file "package")
               (:file "cl-gbm")))

