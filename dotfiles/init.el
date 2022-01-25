(straight-use-package 'lsp-mode)

;(use-package typescript-mode
;:mode "\\.ts\\'"
;:hook(typescript-mode . lsp-deferred)
;:config
;(setq typescript-indent-level 2))

(straight-use-package 'haskell-mode)

(straight-use-package 'ansible)
(straight-use-package 'yaml-mode)
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(straight-use-package 'nix-mode)

(straight-use-package 'company-mode)

(straight-use-package 'evil)
(straight-use-package 'evil-org-mode)
(setq evil-want-C-u-scroll t)
(evil-mode 1)
(evil-org-mode 1)

;(straight-use-package 'org-mode)
 (add-hook 'org-mode 'display-line-numbers-mode 1)

(straight-use-package 'vertico)
(vertico-mode 1)

(straight-use-package 'treemacs
(treemacs-load-theme 'all-the-icons)
(treemacs-set-width  '25))

(straight-use-package 'treemacs-evil)
(straight-use-package 'treemacs-magit)
(straight-use-package 'treemacs-all-the-icons)
(global-set-key [f8] 'treemacs)
(use-package treemacs-all-the-icons
   :after treemacs)
;(treemacs-load-theme 'all-the-icons)
;(treemacs-set-width  '25)

(straight-use-package 'magit)

(straight-use-package 'helpful)
(global-set-key (kbd "C-h f") #'helpful-callable)
(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)

(straight-use-package 'which-key)
(which-key-mode 1)

(straight-use-package 'solaire-mode)
