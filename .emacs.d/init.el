;; -*- lexical-binding: t; -*-
(package-initialize)
(setq custom-file "~/.emacs.d/custom.el")

(add-to-list 'load-path "~/.emacs.d/rc/")
(load "~/.emacs.d/rc/rc.el")
(load "~/.emacs.d/rc/ide.el")

;;; Appearance
(set-frame-font "JetBrainsMono Nerd Font 13")

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode 1)
(global-display-fill-column-indicator-mode 1)
(electric-pair-mode 1)

(use-package doom-modeline
  :ensure t
  :config
  (doom-modeline-mode))


(use-package all-the-icons
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

;;: Ultra-scroll
(use-package ultra-scroll
  ;:vc (:url "https://github.com/jdtsmith/ultra-scroll") ; if desired (emacs>=v30)
  :init
  (setq scroll-conservatively 3 ; or whatever value you prefer, since v0.4
        scroll-margin 0)        ; important: scroll-margin>0 not yet supported
  :config
  (ultra-scroll-mode 1))

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

(load-file custom-file)
;;; init.el ends here
