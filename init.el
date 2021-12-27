(load-theme 'wombat)
;Evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;Org mode
(setq inhibit-splash-screen t)
(transient-mark-mode 1)
(require 'org)

;Treemacs
(global-set-key [f8] 'treemacs)
(require 'treemacs)

;Ui customization
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes") ;; My themes directory

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org"."https://orgmode.org/elpa/")
                         ("elpa"."https://melpa.org/packages/")))

(global-display-line-numbers-mode)
(setq display-line-numbers 'relative)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(evil-org pdf-tools fzf treemacs-evil treemacs markdown-mode ht org)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
