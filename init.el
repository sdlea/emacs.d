;;; init.el --- Emacs bootstrap file -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Version Check
(let ((minver "24.4"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "25.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; Measuring startup time
(require 'init-benchmarking)

;; Garbage collection
(setq gc-cons-threshold (* 256 1024 1024) gc-cons-percentage 0.6)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))


;; Variables configured via the interactive "cusomize" interface
(when (file-exists-p custom-file)
  (load custom-file))


(require 'init-gui-frames)
(require 'init-recentf)

(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init.el ends here
