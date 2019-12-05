(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'setup-core)
(require 'setup-helm)
(require 'setup-php)
(require 'setup-projectile)
(require 'setup-cider)
(require 'setup-flycheck)
(require 'setup-theme)
(require 'setup-treemacs)
(require 'setup-javascript)
;; (require 'setup-html)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (olivetti zen-mode web-mode js2-mode treemacs-magit treemacs-icons-dired treemacs-projectile writeroom-mode beacon idle-highlight zenburn-theme zenburn flycheck-pos-tip flycheck-clojure zencoding-mode impatient-mode which-key minimap use-package smart-mode-line-powerline-theme restart-emacs rainbow-delimiters neotree multi-term move-text markdown-mode magit helm-projectile god-mode gherkin-mode flycheck-phpstan fill-column-indicator eyebrowse expand-region exec-path-from-shell evil-surround evil-smartparens evil-cleverparens dumb-jump dashboard company cider ag ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
