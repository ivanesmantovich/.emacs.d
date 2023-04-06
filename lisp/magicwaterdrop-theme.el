;;; magicwaterdrop-theme.el --- Cute Emacs theme  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(deftheme magicwaterdrop "Add more magic to your life.")

;; https://coolors.co/ffffff
(let* ((white "#FFFFFF")
       (black "#000000")

       (emacs "#9381ff")
       (magic1 "#CEC7FF")
       (magic2 "#EFEDFE")
       (magic3 "#F7F6FF")

       (paper "#7B5B2B")
       (syro "#BFD62E")
       (danger "#FA00D6"))




  (custom-theme-set-faces 'magicwaterdrop
                          ;; Best clean fonts: SF Mono, Mononoki, Menlo / Meslo
                          `(default ((t (:font "SF Mono" :height 180))))
                          `(fringe ((t (:background ,white :foreground ,black))))
                          `(region ((t (:background ,magic2 :foreground ,black))))
                          `(highlight ((t (:background ,emacs :weight bold))))
                          `(lazy-highlight ((t (:background ,magic2 :weight bold))))
                          `(isearch ((t (:background ,magic1 :foreground ,black))))

                          `(font-lock-keyword-face ((t (:foreground ,black :weight bold))))
                          `(font-lock-function-name-face ((t (:foreground ,emacs :weight bold))))
                          `(font-lock-constant-face ((t (:foreground ,black :weight bold :italic t))))
                          `(font-lock-comment-face ((t (:foreground ,magic1 :italic t))))
                          `(font-lock-string-face ((t (:foreground ,paper :italic t))))
                          `(font-lock-variable-name-face ((t (:background ,magic3))))
                          `(font-lock-type-face ((t (:italic t))))

                          `(mode-line ((t (:background ,magic3 :foreground ,black))))
                          `(mode-line-inactive ((t (:background ,white :foreground ,black))))

                          `(show-paren-match ((t (:background ,emacs :foreground ,black))))
                          `(show-paren-mismatch ((t (:background ,danger :foreground ,black))))

                          `(compilation-error ((t (:foreground ,danger))))
                          `(compilation-warning ((t (:foreground ,magic1))))
                          `(compilation-info ((t (:foreground ,syro))))

                          `(tab-bar ((t (:background ,white :foreground ,black))))
                          `(tab-bar-tab ((t (:background ,magic1 :foreground ,black))))
                          `(tab-bar-tab-inactive ((t (:background ,white :foreground ,black))))
                          `(tab-bar-tab-inactive ((t (:background ,white :foreground ,black))))

                          `(org-done ((t (:background ,syro :weight bold))))
                          `(org-headline-done ((t (:foreground ,black :weight bold))))
                          `(org-todo ((t (:foreground ,syro :box t))))

                          `(whitespace-trailing ((t (:background ,magic1 :foreground ,black))))
                          `(trailing-whitespace ((t (:background ,magic1 :foreground ,black))))

                          `(eshell-prompt ((t (:foreground ,emacs))))

                          ;; avy
                          `(avy-lead-face ((t (:background ,emacs :foreground ,black))))
                          `(avy-lead-face-0 ((t (:background ,magic1 :foreground ,black))))
                          `(avy-lead-face-1 ((t (:background ,magic2 :foreground ,black))))
                          `(avy-lead-face-2 ((t (:background ,magic3 :foreground ,black))))

                          ;; rainbow-delimiters
                          `(rainbow-delimiters-depth-1-face ((t (:foreground "#310055"))))
                          `(rainbow-delimiters-depth-2-face ((t (:foreground "#3c0663"))))
                          `(rainbow-delimiters-depth-3-face ((t (:foreground "#4a0a77"))))
                          `(rainbow-delimiters-depth-4-face ((t (:foreground "#5a108f"))))
                          `(rainbow-delimiters-depth-5-face ((t (:foreground "#6818a5"))))
                          `(rainbow-delimiters-depth-6-face ((t (:foreground "#8b2fc9"))))
                          `(rainbow-delimiters-depth-7-face ((t (:foreground "#ab51e3"))))
                          `(rainbow-delimiters-depth-8-face ((t (:foreground "#bd68ee"))))
                          `(rainbow-delimiters-depth-9-face ((t (:foreground "#d283ff"))))

                          ;; eglot
                          `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,black :strike-through t))))

                          ;; flycheck
                          `(flycheck-error-list-error ((t (:foreground ,danger))))
                          `(flycheck-fringe-error ((t (:foreground ,danger))))
                          `(flycheck-error ((t (:underline (:style line :color ,danger)))))
                          `(flycheck-error-list-info ((t (:foreground ,syro))))
                          `(flycheck-fringe-info ((t (:foreground ,syro))))
                          `(flycheck-info ((t (:underline (:style line :color ,syro)))))
                          `(flycheck-error-list-warning ((t (:foreground ,magic1))))
                          `(flycheck-fringe-warning ((t (:foreground ,magic1))))
                          `(flycheck-warning ((t (:underline (:style line :color ,magic1)))))

                          ;; consult
                          `(consult-file ((t (:foreground ,black))))

                          ;; marginalia
                          `(marginalia-documentation ((t (:foreground ,black))))))



(provide-theme 'magicwaterdrop)
(enable-theme 'magicwaterdrop)
(provide 'magicwaterdrop-theme)
;;; magicwaterdrop-theme.el ends here
