;;; init-recentf.el --- Recentf mode on
;;; Commentary:

;;; Code:
(require 'recentf)
(recentf-mode 1)
(add-hook 'after-init-hook 'recentf-mode)
(setq recentf-max-menu-items 18
      recentf-exclude '("/tmp/" "/ssh:"))

(provide 'init-recentf)
;;; init-recentf.el ends here
