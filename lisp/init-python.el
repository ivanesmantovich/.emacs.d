;;; init-python.el --- Python setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Built-in python-mode, DO NOT use "python-mode" package
(use-package python
  :config
  ;; Undo dumb remap
  (define-key python-mode-map [remap backward-sentence] nil)
  (define-key python-mode-map [remap forward-sentence] nil))

(use-package blacken
  :hook (python-mode . blacken-mode))

(use-package pyvenv
  :config (pyvenv-mode 1))

(provide 'init-python)

;;; init-python.el ends here
