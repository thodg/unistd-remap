;;
;;  remap - modular transactional file system
;;  Thomas de Grivel (+33.614550127)
;;

(in-package :common-lisp-user)

;;  All URIs and paths should go here

(defpackage :remap.uri)

;;  Here we control data remapping

(defpackage :remap
  (:use :babel-stream
        :cl
        :cl-stream
        :local-time
        :remap.uri
        :rollback
        :split-sequence
        :unistd-stream)
  #.(cl-stream:shadowing-import-from)
  (:export #:*hooks*
           #:*remap*
           #:cd
           #:cwd
           #:from
           #:ftp
           #:http
           #:html
           #:ls
           #:pwd
           #:shell
           #:sync
           #:to
           #:uiop))
