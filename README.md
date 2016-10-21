
# cl-gbm

LibGBM is an interface to the Linux Generic Buffer Manager (GBM). It can be used in conjunction with EGL and DRM to provide buffers that can be rendered to with OpenGL. `cl-gbm` is a Common Lisp wrapper for libgbm.

## Status

`cl-gbm` is being developed primarily in support of [ulubis](https://github.com/malcolmstill/ulubis) and is therefor feature incomplete. Pull requests adding more of the API are more than welcome.

## Requiremnts

`cl-gbm` (obiously) requires libgbm. It is likely that libgbm already exists on your Linux installation if it is recent.

## Installation

```
CL-USER> (ql:quickload :cl-gbm)
```
