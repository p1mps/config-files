;;  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
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

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
