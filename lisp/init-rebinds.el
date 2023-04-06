;;; init-rebinds.el --- My rebinds -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Repeat mode
(repeat-mode)

(use-package which-key
  :init (which-key-mode)
  :config
  (setq which-key-idle-delay 0.3))

;; kill-this-buffer instead of kill-buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)
;; ibuffer          instead of list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; avy                 (char)
(global-set-key (kbd "M-c") 'avy-goto-char)

;;                     (other)
(global-set-key (kbd "M-o") 'other-window)

;; M-g                 (go) rebinds
(global-set-key (kbd "M-g i") 'eglot-find-implementation)
;; M-o                 (Open) rebinds
(global-set-key (kbd "M-O p j") 'open-projects-job)
(global-set-key (kbd "M-O t j") 'open-tasks-job)
(global-set-key (kbd "M-O t p") 'open-tasks-petprojects)
(global-set-key (kbd "M-O n") 'open-notes)

;; Use hippie-expand instead of dabbrev-expand
(global-set-key (kbd "M-/") #'hippie-expand)
(global-set-key (kbd "s-/") #'hippie-expand)

(provide 'init-rebinds)

;;; init-rebinds.el ends here
