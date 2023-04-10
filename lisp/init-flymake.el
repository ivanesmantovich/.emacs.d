;;; init-flymake.el --- Flymake setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flymake
  :hook (prog-mode . flymake-mode)
  :config
  (setq flymake-no-changes-timeout nil)
  (setq flymake-mode-line-format '(" " flymake-mode-line-exception flymake-mode-line-counters)))

(provide 'init-flymake)

;;; init-flymake.el ends here
