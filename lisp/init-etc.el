;;; init-etc.el --- Other stuff -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun display-startup-echo-area-message nil "Disable the startup message."
  (message nil))

;; y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Do not create file backups
(setq make-backup-files nil)

;; Disable the bell
(setq ring-bell-function 'ignore)

;; UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Revert buffers when the underlying file has changed
(global-auto-revert-mode)
(setq auto-revert-verbose nil)

;; Do not use tabs to indent
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; More context lines
(setq next-screen-context-lines 10)

;; Scrolling tweaks
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

(provide 'init-etc)

;;; init-etc.el ends here
