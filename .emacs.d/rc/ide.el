;; -*- lexical-binding: t; -*-
;;; FlyCheck
(use-package flycheck
  :init (global-flycheck-mode t))

;; Vertico
(use-package vertico
  :init
  (vertico-mode))
;; Marginalia
(use-package marginalia
  :bind (:map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  :init
  (marginalia-mode))
;; Corfu
(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-preview-current nil)    ;; Disable current candidate preview
  :init
  (global-corfu-mode))

;;; YASnippet
(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/snippets/"))
  (yas-global-mode))

;;; Rainbow
;; Delimiters
(use-package rainbow-delimiters
  :ensure t
  :config
  (rainbow-delimiters-mode)
  (add-hook 'foo-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))
;; Mode
(use-package rainbow-mode
  :ensure t
  :hook (emacs-lisp-mode text-mode lisp-mode prog-mode)
  :init (rainbow-mode))

;;; Enable Ligature
(use-package ligature
  :config
  (ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                       "\\\\" "://"))
  (global-ligature-mode t))

;;; Org-Superstar
(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;;; Treesit
(setq major-mode-remap-alist
  '((css-mode  . css-ts-mode)
    (rust-mode . rust-ts-mode)
    (c-mode . c-ts-mode)
    (c++-mode . c++-ts-mode)
    (js-mode . js-ts-mode)
    (html-mode . html-ts-mode)
    (python-mode . python-ts-mode)))

;;; LSP
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-enable-indentation nil)
  ;; (setq lsp-clients-clangd-args '("--fallback-style=none"))
  :hook (
         (c-ts-mode . lsp)
		 (c++-ts-mode . lsp)
		 (rust-ts-mode . lsp)
		 ;; (rustic-mode . lsp)
		 (python-ts-mode . lsp)
		 (js-ts-mode . lsp))
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-doc-enable nil
        lsp-ui-sideline-enable nil))

;; DAP
(dap-mode 1)
(dap-ui-mode 1)
;; enables mouse hover support
(dap-tooltip-mode 1)
;; use tooltips for mouse hover
;; if it is not enabled `dap-mode' will use the minibuffer.
(tooltip-mode 1)
;; displays floating panel with debug buttons
;; requies emacs 26+
(dap-ui-controls-mode 1)

(require 'dap-lldb)
(setq dap-lldb-debug-program '("/usr/bin/lldb-dap"))
;;; ide.el ends here
