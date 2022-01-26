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

(straight-use-package 'doom-themes)
(load-theme 'doom-tokyo-night t)

(straight-use-package 'doom-modeline)
(doom-modeline-mode 1)


(straight-use-package 'all-the-icons)
(setq doom-modeline-major-mode-icon t)

(use-package all-the-icons
:if (display-graphic-p))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") ;; My Themes directory  
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq display-line-numbers-type 'relative)
(solaire-global-mode +1)
;-SRC-Hack Nerd Font Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1

(straight-use-package 'lsp-mode)
(straight-use-package 'dap-mode)
(setq dap-auto-configure-features '(sessions locals controls tooltip))

(use-package typescript-mode
:mode "\\.ts\\'"
:hook(typescript-mode . lsp-deferred))
(add-hook 'typescript-mode #'lsp)
;dap mode configuration setup

(straight-use-package 'haskell-mode)

(straight-use-package 'ansible)
(straight-use-package 'yaml-mode)
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(straight-use-package 'nix-mode)

;(with-eval-after-load 'lsp-mode
;(require 'dap-chrome)
;(add-hook 'lsp-mode-hook ))

(straight-use-package 'company-mode)

(straight-use-package 'evil)
(straight-use-package 'evil-org-mode)
(setq evil-want-C-u-scroll t)
(evil-mode 1)
(evil-org-mode 1)

;(straight-use-package 'org-mode)
 (add-hook 'org-mode 'display-line-numbers-mode 1)

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

(straight-use-package 'writeroom-mode)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org"."https://orgmode.org/elpa/")
			 ("elpa"."https://melpa.org/packages/")))
