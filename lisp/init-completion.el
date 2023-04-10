;;; init-completion.el --- Completion setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package eglot
  :hook
  ((go-mode html-mode css-mode typescript-mode python-mode) . eglot-ensure))

;; TODO: Try icomplete-vertical-mode later
(use-package vertico
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode))

(use-package orderless
  :init
  (setq completion-styles '(orderless)
        completion-category-defaults nil
        completion-category-overrides '((file (styles . (partial-completion))))))

(use-package marginalia
  :after vertico
  :init
  (marginalia-mode))

(use-package corfu
  :custom
  (corfu-cycle t)
  :init
  (global-corfu-mode))
(setq tab-always-indent 'complete)

(global-unset-key (kbd "M-s"))
(use-package consult
  :demand t
  :bind (
         ;; C-c bindings (mode-specific-map)
         ("C-c M-x" . consult-mode-command)
         ("C-c s" . consult-line)
         ("C-c h" . consult-history)
         ("C-c k" . consult-kmacro)
         ("C-c m" . consult-man)
         ("C-c i" . consult-info)
         ([remap Info-search] . consult-info)
         ;; C-x (ctl-x) bindings
         ("C-x b" . consult-buffer)
         ("C-x p b" . consult-project-buffer)
         ("C-x r b" . consult-bookmark)
         ("C-x M-:" . consult-complex-command)
         ;; Custom M-# bindings for fast register access
         ("M-#" . consult-register-load)
         ("M-'" . consult-register-store) ;; orig. abbrev-prefix-mark (unrelated)
         ("C-M-#" . consult-register)
         ;; Other bindings
         ("M-y" . consult-yank-pop)
         ;; M-g (go-to) bindings
         ("M-g e" . consult-compile-error)
         ("M-g f" . consult-flymake)
         ("M-g g" . consult-goto-line)
         ("M-g M-g" . consult-goto-line)
         ("M-g o" . consult-outline)
         ("M-g m" . consult-mark)
         ("M-g k" . consult-global-mark)
         ;;("M-g i" . consult-imenu)
         ;;("M-g I" . consult-imenu-multi)
         ;; M-s (search) bindings
         ("M-s r" . consult-ripgrep)
         ("M-s g" . consult-grep)
         ("M-s G" . consult-git-grep)
         ("M-s D" . consult-locate)
         ("M-s k" . consult-keep-lines)
         ("M-s u" . consult-focus-lines)
         ;; Isearch integration
         ("M-s e" . consult-isearch-history)
         :map isearch-mode-map
         ("M-e" . consult-isearch-history) ;; orig. isearch-edit-string
         ("M-s e" . consult-isearch-history) ;; orig. isearch-edit-string
         ("M-s l" . consult-line) ;; needed by consult-line to detect isearch
         ("M-s L" . consult-line-multi) ;; needed by consult-line to detect isearch
         :map minibuffer-local-map
         ("C-s" . consult-history)
         ("C-r" . consult-history))
  :init
  ;; Optionally configure the register formatting. This improves the register
  ;; preview for `consult-register', `consult-register-load',
  ;; `consult-register-store' and the Emacs built-ins.
  (setq register-preview-delay 0.5
        register-preview-function #'consult-register-format)
  ;; Optionally tweak the register preview window.
  ;; This adds thin lines, sorting and hides the mode line of the window.
  (advice-add #'register-preview :override #'consult-register-window)
  ;; Use Consult to select xref locations with preview
  (setq xref-show-xrefs-function #'consult-xref
        xref-show-definitions-function #'consult-xref)
  ;; Optionally configure the narrowing key.
  ;; Both < and C-+ work reasonably well.
  (setq consult-narrow-key "<") ;; "C-+"
  :config
  (consult-customize
   :preview-key '(:debounce 0.4 any)))

(provide 'init-completion)

;;; init-completion.el ends here
