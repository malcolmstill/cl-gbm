;;;; package.lisp

(defpackage :gbm
  (:use :common-lisp :cffi)
  (:export
   create-device
   surface-create
   surface-lock-front-buffer
   bo-get-handle
   bo-get-stride
   surface-release-buffer
   surface-destroy
   device-destroy))


