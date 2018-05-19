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
  :config
  (evil-mode t))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn))

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

(use-package helm
  :ensure t)

(use-package helm-projectile
  :ensure t
  :config (bind-key "C-c C-f" 'helm-projectile-find-file-dwim))

(use-package company
  :ensure t
  :init (global-company-mode))

(use-package dumb-jump
  :ensure t
  :bind (("M-g" . dumb-jump-go)))

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
(fset 'yes-or-no-p-history 'y-or-n-p)
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
    (company company-mode helm-projectile helm linum-mode dump-jump dumb-jump magit php-mode flycheck linum-relative use-package zenburn-theme evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
