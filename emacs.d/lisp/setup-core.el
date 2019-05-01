(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
   (setq dashboard-items '((recents  . 5) (projects . 5))))

(use-package linum-relative
  :ensure t
  :config
  (linum-relative-mode t))

(use-package flycheck
  :ensure t)

(use-package magit
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

(use-package rainbow-delimiters
  :ensure t
  :config (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package restart-emacs
  :ensure t)

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

(use-package god-mode
  :ensure t
  :config
  (progn
    (global-set-key (kbd "<escape>") 'god-mode-all)
    (setq god-exempt-major-modes nil)
    (setq god-exempt-predicates nil)))

(use-package paredit
  :ensure t
  :config
  (progn
    (add-hook 'clojure-mode-hook #'enable-paredit-mode)
    (add-hook 'emacs-lisp-mode-hook #'paredit-mode)
    (add-hook 'lisp-interaction-mode-hook #'paredit-mode)
    (add-hook 'ielm-mode-hook #'paredit-mode)
    (add-hook 'lisp-mode-hook #'paredit-mode)
    (add-hook 'eval-expression-minibuffer-setup-hook #'paredit-mode)))

(use-package company
  :ensure t
  :defer t
  :init (global-company-mode))

(use-package which-key
  :ensure t
  :init (which-key-mode 1))

(global-linum-mode 1)

;; no tabs and 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; disable menu and scrollbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; delete whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; disable yes-or-no
(defalias 'yes-or-no-p 'y-or-n-p)

(setq confirm-nonexistent-file-or-buffer nil)

;; get rid of splash screen
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; Allow hash to be entered
(global-set-key (kbd "C-3") '(lambda () (interactive) (insert "#")))

;; show current line
(global-hl-line-mode 1)

(defun dropbox-org ()
;; opens the dropbox directory for my org files
  (interactive)
  (find-file "~/Dropbox/org"))

(defun github ()
;; opens the dropbox directory for my org files
  (interactive)
  (find-file "~/github"))

;; global keys
(global-set-key (kbd "C-w") 'ace-window)
(global-set-key (kbd "M-n") 'neotree-toggle)

(setq ns-right-alternate-modifier nil)

(global-set-key (kbd "M-o") 'other-window)

(setq mac-option-key-is-meta nil)
(setq mac-right-option-modifier 'meta)


(provide 'setup-core)
