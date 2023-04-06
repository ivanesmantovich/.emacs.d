;;; init-diagnostics.el --- Diagnostics setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :config
  (setq flymake-mode-line-format '(" " flymake-mode-line-exception flymake-mode-line-counters))
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package consult-flycheck
  :after (consult))

(provide 'init-diagnostics)

;;; init-diagnostics.el ends here
