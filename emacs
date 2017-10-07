(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)
(require 'use-package)
(use-package evil)
(use-package helm)
(use-package phpunit)
(use-package tangotango-theme)
(use-package php-mode)
(use-package magit)
(use-package auto-complete)
(use-package linum-relative)

(load-theme 'tangotango t)

(linum-relative-mode t)
(evil-mode t)
(auto-complete t)
(helm-mode t)
;(php-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
