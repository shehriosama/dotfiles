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
(global-display-fill-column-indicator-mode 1)

(use-package doom-modeline
  :ensure t
  :config
  (doom-modeline-mode))

(use-package all-the-icons
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

;;; IDO
(ido-mode t)

;;; dired
(require 'dired-x)
(use-package diredfl
  :init (diredfl-global-mode t))

(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
(setq-default dired-dwim-target t)
(setq dired-listing-switches "-alh")
(setq dired-mouse-drag-files t)

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

;;; Rainbow mode
(use-package rainbow-mode
  :ensure t
  :hook (emacs-lisp-mode text-mode lisp-mode prog-mode)
  :init (rainbow-mode))

(load-file custom-file)
;;; init.el ends here
