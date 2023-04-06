;;; init-git.el --- Git setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; NOTE: use vc-refresh-state to update the current buffer branch
(use-package magit)

(use-package diff-hl
  :after (magit)
  :config
  (global-diff-hl-mode)
  (add-hook 'dired-mode-hook 'diff-hl-dired-mode)
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

(provide 'init-git)

;;; init-git.el ends here
