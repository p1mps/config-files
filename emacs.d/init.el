
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (which-key minimap use-package smart-mode-line-powerline-theme restart-emacs rainbow-delimiters neotree multi-term move-text markdown-mode magit linum-relative helm-projectile god-mode gherkin-mode flycheck-phpstan fill-column-indicator eyebrowse expand-region exec-path-from-shell evil-surround evil-smartparens evil-cleverparens dumb-jump dashboard company cider ag ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
