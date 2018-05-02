(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package evil-mode
  :ensure t
  :config
  (evil-mode t))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn))

(use-package php-mode
  :ensure t
  :config
  (php-mode t))

(use-package magit
  :ensure t)

(use-package linum-relative
  :ensure t
  :config
  ((linum-relative-mode t))

(use-package org
  :ensure t)

;; no tabs and 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
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
