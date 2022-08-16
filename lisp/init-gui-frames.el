;;; init-gui-frame.el --- GUI frames -*- lexical-binding: t -*-
;;; Commentary:
;; Named after purcell config
;;; Code:

(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
;; Special menu bar config for Mac, but not here
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))

;; Scratch message
(setq initial-scratch-message "")


(provide 'init-gui-frames)
;;; init-gui-frames.el ends here
