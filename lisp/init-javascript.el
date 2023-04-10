;;; init-javascript.el --- Javascript setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Emacs 29 will ship with support for a parser-library called tree-sitter, and will actually have in-tree support for TypeScript! So now you can just use the provided typescript-ts-mode and get better support for TypeScript than typescript.el ever provided. This new mode also supports TSX.
;; NOTE: use M-x shell or ansi-term for nvm
(use-package typescript-mode
  :mode "\\.ts\\'"
  :config
  (setq typescript-indent-level 4))

(provide 'init-javascript)

;;; init-javascript.el ends here

