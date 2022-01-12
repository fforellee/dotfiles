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
