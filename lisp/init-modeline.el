;;; init-modeline.el --- Modeline customizations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Diminish can hide minor modes from the mode line
(use-package diminish
  :config
  (dolist (mode-to-diminish '(visual-line-mode
                              eldoc-mode
                              which-key-mode
                              whitespace-mode
                              rainbow-mode
                              rainbow-delimiters-mode
                              flycheck-mode
                              paredit-mode))
  (diminish mode-to-diminish)))

;; ;; Format time (March 28, Friday. 14:00)
(setq display-time-format "%B %e, %A. %H:%M"
      display-time-default-load-average nil)
(display-time-mode t)

;; ;; Align time to the right
(setq global-mode-string (remove 'display-time-string global-mode-string))
(setq mode-line-end-spaces
      (list (propertize " " 'display '(space :align-to (- right 34)))
            'mode-line-position
            (propertize (eval 'display-time-string) 'face 'bold)))

(setq-default mode-line-format
              '(" %& "
                mode-line-buffer-identification " "
                (vc-mode vc-mode) " "
                mode-line-modes
                mode-line-end-spaces
                ))

(provide 'init-modeline)

;;; init-modeline.el ends here
