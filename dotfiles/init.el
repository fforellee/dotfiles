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

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;Install doom themes
(straight-use-package 'doom-themes)
;(load-theme 'doom-gruvbox t)
(load-theme 'doom-monokai-classic t)
;Install doom modeline
(straight-use-package 'doom-modeline)
(doom-modeline-mode 1)
;Install icons packages
(setq doom-modeline-major-mode-icon t)
;Remove emacs bars
(menu-bar-mode '-1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode -1)
(setq tab-bar-mode -1)
;Set line numbers as relative
(setq display-line-numbers-type 'relative)
;Set font
;(set-frame-font "-CYRE-Inconsolata Nerd Font-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1V")

(straight-use-package 'lsp-mode)
;Lsp ui tweaks
(setq lsp-headerline-breadcrumb-enable nil)
(straight-use-package 'dap-mode)
(add-hook 'prog-mode-hook 'lsp)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(setq dap-auto-configure-features '(sessions locals controls tooltip))

;Add dap chrome
(require 'dap-chrome)
(require 'dap-python)

(straight-use-package 'nix-mode)
(straight-use-package 'haskell-mode)
(straight-use-package 'lsp-haskell)
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;(add-to-list 'completion-ignored-extensions ".hi")

(straight-use-package 'ansible)
(straight-use-package 'yaml-mode)
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(straight-use-package 'company-mode)

(straight-use-package 'evil)
(straight-use-package 'evil-org-mode)
(evil-mode 1)
(evil-org-mode 1)

(add-hook 'org-mode-hook 'evil-org-mode 1)
(global-set-key [f9] 'org-capture)

(straight-use-package 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("✙" "♱" "♰" "☥" "✞" "✟" "✝" "†" "✠" "✚" "✜" "✛" "✢" "✣" "✤" "✥"))

(straight-use-package 'vertico)
(vertico-mode 1)

(straight-use-package 'treemacs)       ;install treemacs
(straight-use-package 'treemacs-evil)  ;treemacs evil mode
(straight-use-package 'treemacs-magit) ;treemacs magit support
;treemacs icons and UI
(straight-use-package 'treemacs-all-the-icons)
(setq treemacs-width '25)
(setq treemacs-user-mode-line-format 'none)

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

(straight-use-package 'rainbow-delimiters)
(setq rainbow-delimeters-mode 't)

(straight-use-package 'rainbow-mode)

(straight-use-package 'pdf-tools)
(pdf-tools-install)

(straight-use-package 'yasnippets)
(straight-use-package 'yasnippet-snippets)
(add-hook 'prog-mode-hook #'yas-minor-mode)
(setq yas-snippet-dirs
'("~/.emacs.d/snippets"                 ;; personal snippets
"/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
"/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
))
(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.
;;keybindings
(global-set-key (kbd "C-c C-n") 'yas-new-snippet)
(global-set-key (kbd "C-c C-i") 'yas-insert-snippet)

(use-package dired
:ensure nil
:commands (dired dired-jump)
:bind(("C-x C-j" . dired-jump))
)
(add-hook 'diredmode-hook evil-mode -1)

(straight-use-package 'emmet-mode)

(straight-use-package 'recentf)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org"."https://orgmode.org/elpa/")
			 ("elpa"."https://melpa.org/packages/")))
