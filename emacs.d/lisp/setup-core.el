(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))


(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents  . 5) (projects . 5))))

(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))


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
    (add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
    (add-hook 'lisp-mode-hook             'enable-paredit-mode)
    (add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
    (add-hook 'scheme-mode-hook           'enable-paredit-mode)))

;; Which Key
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode 1))

;; Custom keybinding
;; (use-package general
;;   :ensure t
;;   :config (general-define-key
;;   :states '(emacs)
;;   :prefix "SPC"
;;   :non-normal-prefix "M-SPC"
;;   "/"   '(helm-projectile-ag :which-key "find")
;;   "TAB" '(switch-to-prev-buffer :which-key "previous buffer")
;;   "SPC" '(helm-M-x :which-key "M-x")
;;   "pf"  '(helm-find-files :which-key "find files")
;;   ;; Buffers
;;   "bb"  '(helm-buffers-list :which-key "buffers list")
;;   ;; Window
;;   "wl"  '(windmove-right :which-key "move right")
;;   "wh"  '(windmove-left :which-key "move left")
;;   "wk"  '(windmove-up :which-key "move up")
;;   "wj"  '(windmove-down :which-key "move bottom")
;;   "w/"  '(split-window-right :which-key "split right")
;;   "w-"  '(split-window-below :which-key "split bottom")
;;   "wx"  '(delete-window :which-key "delete window")
;;   ;; Others
;;   "at"  '(ansi-term :which-key "open terminal")
;;   "gs"  '(magit-status :which-key "git") ))


(global-set-key (kbd "C-c /") 'helm-projectile-ag)
(global-set-key (kbd "C-c pf") 'helm-find-files)
(global-set-key (kbd "C-c bb") 'helm-buffer-list)
(global-set-key (kbd "C-c gs") 'magit-status)



(use-package helm-ag
  :ensure t)


(use-package exec-path-from-shell
  :ensure t
  :init (when (memq window-system '(mac ns x))
          (exec-path-from-shell-initialize)))

(global-linum-mode 1)

;; no tabs and 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)

;; font
(setq default-frame-alist '((font . "Source Code Pro-14")))

(use-package expand-region
  :ensure t
  :config (global-set-key (kbd "C-=") 'er/expand-region))

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; delete whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(use-package rainbow-delimiters
  :ensure t)

(provide 'setup-core)
