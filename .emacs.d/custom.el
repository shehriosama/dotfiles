;; -*- lexical-binding: t; -*-
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(adwaita-dark))
 '(custom-safe-themes
   '("a68ec832444ed19b83703c829e60222c9cfad7186b7aea5fd794b79be54146e6"
	 default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(adwaita-dark-theme all-the-icons-dired all-the-icons-nerd-fonts
						autothemer company dap-mode diredfl
						doom-modeline doom-themes embark-consult evil
						flycheck helm-lsp lsp-dart lsp-ivy lsp-java
						lsp-pyright lsp-python-ms lsp-treemacs lsp-ui
						lua-mode magit minions move-text
						multiple-cursors nix-mode panda-theme
						rainbow-mode smex tree-sitter-langs
						vs-dark-theme vscode-icon vterm yasnippet))
 '(size-indication-mode t)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#1d1d21" :foreground "#ffffff"))))
 '(imenu-list-entry-face-0 ((t (:background "#2c2c30" :foreground "#ffffff"))))
 '(mode-line ((t (:background "#2e2e32" :foreground "#ffffff"))))
 '(treemacs-directory-face ((t (:background "#2b2b2f" :foreground "#dddddd"))))
 '(treemacs-root-face ((t (:background "#2b2b2f" :foreground "#ffffff" :weight bold)))))

;;; custom.el ends here
