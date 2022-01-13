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
(load-theme 'doom-gruvbox t)

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
(display-line-numbers-mode)
(setq display-line-numbers 'relative)

(straight-use-package 'evil)
(straight-use-package 'evil-org)
(evil-mode 1)

(straight-use-package 'org-mode)

(straight-use-package 'vertico)
(vertico-mode 1)

(straight-use-package 'treemacs)
(straight-use-package 'treemacs-evil)
(straight-use-package 'treemacs-all-the-icons)
(global-set-key [f8] 'treemacs)

(straight-use-package 'magit)

(straight-use-package 'ansible)
(straight-use-package 'yaml-mode)
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org"."https://orgmode.org/elpa/")
			 ("elpa"."https://melpa.org/packages/")))
