;;; init.el --- Waterframe setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Reduce the frequency of garbage collection while starting up
(setq gc-cons-threshold 50000000)

(setq read-process-output-max (* 1024 1024)) ;; 1 MB

;; Do not show native compilation warnings
(setq native-comp-async-report-warnings-errors nil)

;; Start the Emacs server. All emacsclient calls are routed here
(server-start)

(defun show-server-edit-buffer (buffer)
  "Open emacsclient windows (BUFFER) in a split."
  (split-window-vertically -15)
  (other-window 1)
  (set-buffer buffer))
(setq server-window #'show-server-edit-buffer)

;; Scan my lisp directory
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Package management
(require 'init-package-management)

;; Use no-littering to automatically set common paths to the new user-emacs-directory
(use-package no-littering
  :config
  (setq auto-save-file-name-transforms
        `((".*" ,(no-littering-expand-var-file-name "auto-save/") t))))

(use-package desktop
  :config
  (desktop-save-mode))

;; Saveplace remembers the location in a file when saving files
(use-package saveplace
  :config
  (save-place-mode))

(use-package savehist
  :config
  (savehist-mode))

(use-package recentf
  :config
  (setq recentf-auto-cleanup 'never
        recentf-max-saved-items 500
        recentf-max-menu-items 15)
  (recentf-mode))

(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)

(use-package pdf-tools
  :hook (doc-view-mode . pdf-view-mode))

(use-package pdf-view-restore
  :after pdf-tools
  :config
  (add-hook 'pdf-view-mode-hook 'pdf-view-restore-mode))

(use-package avy)

(use-package expand-region
  :bind ("C-r" . er/expand-region))

(use-package paredit
  :config
  ;; Clear some keybindings that i use
  (define-key paredit-mode-map (kbd "M-s") nil)
  :hook ((clojure-mode . paredit-mode)
         (emacs-lisp-mode . paredit-mode)
         (common-lisp-mode . paredit-mode)
         (scheme-mode . paredit-mode)
         (lisp-mode . paredit-mode)))

(require 'dired)
(setq dired-kill-when-opening-new-dired-buffer t)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(put 'dired-find-alternate-file 'disabled nil)
(define-key dired-mode-map (kbd "M-u") 'dired-up-directory)

(use-package whitespace
  :config
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook #'whitespace-mode))
  (add-hook 'before-save-hook #'whitespace-cleanup)
  (setq whitespace-style '(face tabs trailing)))

(require 'init-python)
(require 'init-javascript)
(require 'init-go)

(require 'init-org)
(require 'init-parenthesis)
(require 'init-git)
(require 'init-completion)
(require 'init-flymake)
(require 'init-helper-functions)
(require 'init-rebinds)
(require 'init-gui)
(require 'init-modeline)
(require 'init-etc)


(require 'waterframe-theme)

;; Dial the GC back down after startup
(setq gc-cons-threshold (* 2 1000 1000))

;;; init.el ends here
