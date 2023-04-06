;;; init-gui.el --- GUI customizations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Disable GUI elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Disable startup screen
(setq inhibit-startup-screen t)

;; Disable cursor blinking
(blink-cursor-mode -1)

;; Breathing room
(set-fringe-mode 20)

;; Enable word wrapping
(setq truncate-lines t)

;; C-TAB next tab, S-C-TAB prev tab
(tab-bar-mode)
(setq tab-bar-close-button-show nil)
(setq tab-bar-format '(tab-bar-format-history tab-bar-format-tabs tab-bar-separator))
(global-set-key (kbd "C-c t n") 'tab-bar-new-tab)
(global-set-key (kbd "C-c t r") 'tab-bar-rename-tab)
(global-set-key (kbd "C-c t c") 'tab-bar-close-tab)

(provide 'init-gui)

;;; init-gui.el ends here
