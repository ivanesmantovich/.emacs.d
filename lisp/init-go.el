;;; init-go.el --- Go setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package go-mode)

;; Works for Emacs 29
;; (defun my-eglot-organize-imports () (interactive)
;; 	   (eglot-code-actions nil nil "source.organizeImports" t))
;; (add-hook 'before-save-hook 'my-eglot-organize-imports nil t)
;; (add-hook 'before-save-hook 'eglot-format-buffer)

(provide 'init-go)

;;; init-go.el ends here
