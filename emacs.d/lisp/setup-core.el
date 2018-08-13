(use-package exec-path-from-shell
  :ensure t
  :config (when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)))


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

(use-package move-text
  :ensure t
  :config (move-text-default-bindings))

(use-package eyebrowse
  :ensure t
  :diminish eyebrowse-mode
  :config (progn
            (define-key eyebrowse-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
            (define-key eyebrowse-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
            (define-key eyebrowse-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
            (define-key eyebrowse-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
            (eyebrowse-mode t)
            (setq eyebrowse-new-workspace t)))

;; put all backup files into ~/emacs_backups
(setq backup-by-copying t)
(setq backup-directory-alist '(("." . "~/emacs_backups")))

;; disable lock files
(setq create-lockfiles nil)

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
(global-set-key (kbd "C-3") '(lambda () (interactive) (insert "#")))
;; show current line
(global-hl-line-mode 1)

(defun dropbox-org ()
;; opens the dropbox directory for my org files
  (interactive)
  (find-file "~/Dropbox/org"))

;; global keys
(global-set-key (kbd "C-w") 'ace-window)
(global-set-key (kbd "M-n") 'neotree-toggle)
(global-set-key (kbd "M-m") 'magit)
(setq ns-right-alternate-modifier nil)

(provide 'setup-core)
