;; -*- lexical-binding: t; -*-
(package-initialize)
(setq custom-file "~/.emacs.d/custom.el")

(load "~/.emacs.d/rc/rc.el")

;;; Appearance
(set-frame-font "JetBrainsMono Nerd Font Mono 13")

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode 1)

(use-package doom-modeline
  :ensure t
  :config
  (doom-modeline-mode))

;;; IDO
(ido-mode t)

;;; FlyCheck
(use-package flycheck
  :init (global-flycheck-mode t))

;;; Company
(use-package company
  :ensure t
  :config
  (global-company-mode)
  (add-hook 'tuareg-mode-hook
            (lambda ()
              (interactive)
              (company-mode 0))))

;;; YASnippet
(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/snippets/"))
  (yas-global-mode))

(use-package tree-sitter-langs
  :ensure t
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

;;; LSP Mode
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (c-mode . lsp)
         (c++-mode . lsp)
         (rust-ts-mode . lsp)
         (js-ts-mode . lsp)
         (js-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;;; Rainbow mode
(use-package rainbow-mode
  :ensure t
  :hook (emacs-lisp-mode text-mode lisp-mode prog-mode)
  :init (rainbow-mode))

(load-file custom-file)
;;; init.el ends here
