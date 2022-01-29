;Define straight.el 
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

  (straight-use-package 'use-package)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") ;; My Themes directory  
;Install doom themes
(straight-use-package 'doom-themes)
(load-theme 'doom-1337 t)
;Install doom modeline
(straight-use-package 'doom-modeline)
(doom-modeline-mode 1)
;Install icons packages
(straight-use-package 'all-the-icons)
(setq doom-modeline-major-mode-icon t)
(use-package all-the-icons
:if (display-graphic-p))
;Remove emacs bars
(menu-bar-mode '-1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;Chose font
(set-frame-font "-SRC-Hack Nerd Font Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
;Set line numbers as relative
(setq display-line-numbers-type 'relative)

(straight-use-package 'lsp-mode)
;Lsp ui tweaks
(setq lsp-headerline-breadcrumb-enable nil)
;(straight-use-package 'dap-mode)
;(setq dap-auto-configure-features '(sessions locals controls tooltip))

(straight-use-package 'nix-mode)
(straight-use-package 'haskell-mode)
(add-hook 'haskell-mode-hook #'lsp)

(straight-use-package 'ansible)
(straight-use-package 'yaml-mode)
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(straight-use-package 'company-mode)

(straight-use-package 'evil)
(straight-use-package 'evil-org-mode)
(setq evil-want-C-u-scroll t)
(evil-mode 1)
(evil-org-mode 1)

(add-hook 'org-mode-hook 'evil-org-mode 1)

(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
(use-package org-superstar
:after org
:hook (org-mode . org-superstar-mode)
:config
  (set-face-attribute 'org-superstar-header-bullet nil :inherit 'fixed-pitched :height 180)
:custom
;; set the leading bullet to be a space. For alignment purposes I use an em-quad space (U+2001)
(org-superstar-headline-bullets-list '(" "))
(org-superstar-todo-bullet-alist '(("DONE" . ?✔)
				   ("TODO" . ?⌖)
				   ("ISSUE" . ?)
				   ("BRANCH" . ?)
				   ("FORK" . ?)
				   ("MR" . ?)
				   ("MERGED" . ?)
				   ("GITHUB" . ?A)
				   ("WRITING" . ?✍)
				   ("WRITE" . ?✍)
				   ))
(org-superstar-special-todo-items t)
(org-superstar-leading-bullet "")
)

(straight-use-package 'org-roam)

(straight-use-package 'vertico)
(vertico-mode 1)

(straight-use-package 'treemacs)       ;install treemacs
(straight-use-package 'treemacs-evil)  ;treemacs evil mode
(straight-use-package 'treemacs-magit) ;treemacs magit support
;treemacs icons and UI
(straight-use-package 'treemacs-all-the-icons
(setq treemacs-width '25)
(setq treemacs-user-mode-line-format 'none)
;(setq doom-themes-treemacs-theme "doom-colors"))

(global-set-key [f8] 'treemacs)

(straight-use-package 'magit)

(straight-use-package 'helpful)
(global-set-key (kbd "C-h f") #'helpful-callable)
(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)

(straight-use-package 'which-key)
(which-key-mode 1)

(straight-use-package 'solaire-mode)
(solaire-global-mode +1)

(straight-use-package 'writeroom-mode)

(straight-use-package 'yasnippets)

(straight-use-package 'rainbow-delimiters)

(straight-use-package 'rainbow-mode)

(straight-use-package 'pdf-tools)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org"."https://orgmode.org/elpa/")
			 ("elpa"."https://melpa.org/packages/")))
