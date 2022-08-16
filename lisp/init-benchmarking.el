;;; init-benmarking --- Measuring init time -*- lexical-binding: t -*-
;;; Commentary:
;; Inspared by purcell config
;; Only measure emacs init time, not including package or file loading time.
;; Maybe will add in th future.
;;; Code:

(defun sanityinc/time-subtract-millis (b a)
  (* 1000.0 (float-time (time-subtract b a))))

(defun sanityinc/show-init-time ()
  (message "init completed in %.2fms"
           (sanityinc/time-subtract-millis after-init-time before-init-time)))

(add-hook 'after-init-hook 'sanityinc/show-init-time)

(provide 'init-benchmarking)
;;; init-benmarking.el ends here
