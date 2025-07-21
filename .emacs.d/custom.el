;; -*- lexical-binding: t; -*-
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-ayu-mirage))
 '(custom-safe-themes
   '("83550d0386203f010fa42ad1af064a766cfec06fc2f42eb4f2d89ab646f3ac01" default))
 '(display-line-numbers-type 'relative)
 '(fill-column 80)
 '(indent-tabs-mode t)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-selected-packages
   '(all-the-icons all-the-icons-dired all-the-icons-nerd-fonts company consult
				   consult-company consult-flycheck doom-modeline doom-themes
				   evil flycheck magit move-text multiple-cursors smex
				   tree-sitter-langs ultra-scroll yasnippet))
 '(size-indication-mode t)
 '(tab-bar-auto-width nil)
 '(tab-width 4)
 '(warning-minimum-level :error))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
