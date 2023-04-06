;;; init-parenthesis.el --- Parenthesis tweaks -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package elec-pair
  :config
  (electric-pair-mode))

(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package rainbow-mode
  :config
  (add-hook 'prog-mode-hook #'rainbow-mode))

(provide 'init-parenthesis)

;;; init-parenthesis.el ends here
