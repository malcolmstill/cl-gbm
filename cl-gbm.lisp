(in-package :gbm)

(define-foreign-library libgbm
  (:unix (:or "/usr/lib64/libgbm.so.1" "/usr/lib64/libgbm.so.0" "/usr/lib64/libgbm.so"))
  (t (:default "libgbm")))

(use-foreign-library libgbm)

(defcfun ("gbm_create_device" create-device) :pointer
  (fd :int))

(defcfun ("gbm_surface_create" surface-create) :pointer
  (device :pointer)
  (width :uint32)
  (height :uint32)
  (format :uint32)
  (flags :uint32))

(defcfun ("gbm_surface_lock_front_buffer" surface-lock-front-buffer) :pointer
  (surface :pointer))

(defcunion bo-handle
  (ptr :pointer)
  (s32 :int32)
  (u32 :uint32)
  (s64 :int64)
  (u65 :uint64))

;; Until I figure out how to use defcunion
;; will just declare that gbm_bo_get_handle returns int32
(defcfun ("gbm_bo_get_handle" bo-get-handle) :uint32 ;(:union bo-handle)
  (bo :pointer))

(defcfun ("gbm_bo_get_stride" bo-get-stride) :uint32
  (bo :pointer))

(defcfun ("gbm_surface_release_buffer" surface-release-buffer) :void
  (surface :pointer)
  (bo :pointer))

(defcfun ("gbm_surface_destroy" surface-destroy) :void
  (surface :pointer))

(defcfun ("gbm_device_destroy" device-destroy) :void
  (device :pointer))

