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
 '(custom-enabled-themes '(doom-nord))
 '(custom-safe-themes
   '("fd22a3aac273624858a4184079b7134fb4e97104d1627cb2b488821be765ff17"
	 "19d62171e83f2d4d6f7c31fc0a6f437e8cec4543234f0548bad5d49be8e344cd"
	 "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f"
	 "dfb1c8b5bfa040b042b4ef660d0aab48ef2e89ee719a1f24a4629a0c5ed769e8"
	 "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad"
	 "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" default))
 '(display-line-numbers-type 'relative)
 '(fill-column 80)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-selected-packages
   '(all-the-icons-dired all-the-icons-nerd-fonts company diredfd diredfl
						 doom-modeline doom-themes embark-consult evil flycheck
						 magit minions move-text multiple-cursors org-superstar
						 rainbow-delimiters rainbow-mode smex tree-sitter-langs
						 vterm yasnippet))
 '(size-indication-mode t)
 '(tab-width 4)
 '(warning-minimum-level :error))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
