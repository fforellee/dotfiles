(load-theme 'wombat)
;Evil mode
(add-to-list 'load-path "~/.emacs.d/evil")

;Ui customization
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") ;; My Themes directory  
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org"."https://orgmode.org/elpa/")
                         ("elpa"."https://melpa.org/packages/")))

;(global-display-line-numbers-mode)
(display-line-numbers-mode)
(setq display-line-numbers 'relative)
