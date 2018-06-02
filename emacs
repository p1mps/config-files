(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package evil
  :ensure t
  :config   (evil-mode t)
  (defun next-line-and-recenter () (interactive) (next-line 2) (recenter))
  (defun previous-line-and-recenter () (interactive) (previous-line 2) (recenter))
  (global-set-key (kbd "M-k") 'previous-line-and-recenter))
  (global-set-key (kbd "M-j") 'next-line-and-recenter)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
   (setq dashboard-items '((recents  . 5) (projects . 5) (agenda . 5))))

(use-package linum-relative
  :ensure t
  :config
  (linum-relative-mode t))

(use-package org
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package php-mode
  :ensure t)

(use-package magit
  :ensure t)

(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region))

(use-package helm
  :ensure t
  :config (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-m") 'helm-M-x)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (global-set-key (kbd "C-x b") 'helm-mini)
  (global-set-key (kbd "C-x C-b") 'helm-buffers-list)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-h f") 'helm-apropos)
  (global-set-key (kbd "C-h r") 'helm-info-emacs)
  (global-set-key (kbd "C-h C-l") 'helm-locate-library)

  ;; shell history.
  (define-key shell-mode-map (kbd "C-c C-l") 'helm-comint-input-ring)

  ;; use helm to list eshell history
  (add-hook 'eshell-mode-hook
            #'(lambda ()
                (substitute-key-definition 'eshell-list-history 'helm-eshell-history eshell-mode-map)))

  (substitute-key-definition 'find-tag 'helm-etags-select global-map)
  (helm-mode 1))

(use-package projectile
  :ensure t)

(use-package helm-projectile
  :ensure t
  :config (bind-key "C-c C-b" 'helm-buffers-list)
  (bind-key "C-c C-t" 'helm-projectile-find-file-dwim)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on))

(use-package company
  :ensure t
  :init (global-company-mode))

(use-package dumb-jump
  :ensure t)

(use-package fill-column-indicator
  :ensure t
  :init (fci-mode 1))

(use-package neotree
  :ensure t
  :config  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter))

(use-package multi-term
  :ensure t)

(use-package ac-php
  :ensure t
  :init
  (add-hook 'php-mode-hook
            '(lambda ()
               (auto-complete-mode t)
               (require 'ac-php)
               (setq ac-sources  '(ac-source-php ) )
               (yas-global-mode 1)
               (ac-php-core-eldoc-setup ) ;; enable eldoc

               (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
               (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back)    ;go back
               )))

(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme 'dark)
  (sml/setup))

(global-linum-mode 1)

;; no tabs and 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; disable menu and scrollbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; no whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; disable yes-or-no
(defalias 'yes-or-no-p 'y-or-n-p)

(setq confirm-nonexistent-file-or-buffer nil)
;; get rid of splash screen
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)
;;; no backup files
(setq make-backup-files nil)
(global-auto-revert-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" default)))
 '(package-selected-packages
   (quote
    (dashboard fill-column-indicator company company-mode helm-projectile helm linum-mode dump-jump dumb-jump magit php-mode flycheck linum-relative use-package zenburn-theme evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn))

(global-set-key (kbd "C-w") 'ace-window)
(global-set-key (kbd "M-n") 'neotree-toggle)
(global-set-key (kbd "M-m") 'magit)

;; Allow hash to be entered
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))
