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

(use-package magit
  :ensure t)

(use-package gherkin-mode
  :ensure t)

(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region))

(use-package multi-term
  :ensure t)

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

;; Allow hash to be entered
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))
;; show current line
(global-hl-line-mode 1)

;; global keys
(global-set-key (kbd "C-w") 'ace-window)
(global-set-key (kbd "M-n") 'neotree-toggle)
(global-set-key (kbd "M-m") 'magit)

(provide 'setup-core)
