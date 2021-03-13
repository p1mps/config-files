(use-package beacon
  :ensure t
  :config (beacon-mode 1))

(use-package dumb-jump
  :ensure t
  :config (setq dumb-jump-selector 'helm)
  (setq xref-backend-functions (remq 'etags--xref-backend xref-backend-functions))
(add-to-list 'xref-backend-functions #'dumb-jump-xref-activate t)
  )

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents  . 5) (projects . 5))))

(use-package magit
  :ensure t)

(use-package dot-mode
  :ensure t
  :config
  (global-dot-mode t))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package ace-jump-mode
  :ensure t
  :config
  (define-key global-map (kbd "C-c q") 'ace-jump-mode))

(use-package guru-mode
  :ensure t
  :config
  (guru-global-mode 1))

(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region))

(use-package idle-highlight-mode
  :ensure t
  :config
  (add-hook 'prog-mode-hook (lambda () (idle-highlight-mode t))))

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

(use-package imenu-list
  :bind ("C-." . imenu-list-smart-toggle)
  :custom
  (imenu-list-focus-after-activation t)
  (imenu-list-auto-resize t))

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
;;(global-set-key (kbd "C-c bb") 'helm-buffer-list)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c pw") 'projectile-switch-project)
(global-set-key (kbd "C-c pa") 'projectile-ag)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-c /") 'comment-region)
(global-set-key (kbd "C-c s p") 'spotify-play)
(global-set-key (kbd "C-c s s") 'spotify-pause)
(global-set-key (kbd "C-c s n") 'spotify-next)
(global-set-key (kbd "C-c j") 'join-line)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "M-n") 'move-beginning-of-line)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "<RET>") 'newline-and-indent)
(global-set-key (kbd "C-c o j") 'org-journal-new-entry)

;;(setq mac-right-option-modifier nil)

(fset 'yes-or-no-p 'y-or-n-p)
;; extra color themese
;; (add-to-list 'custom-theme-load-path
;;              (file-name-as-directory "~/.emacs.d/private/replace-colorthemes"))


(use-package helm-ag
  :ensure t)


(use-package exec-path-from-shell
  :ensure t
  :init (when (memq window-system '(mac ns x))
          (exec-path-from-shell-initialize)))

(global-linum-mode 1)
(global-prettify-symbols-mode 1)

;; no tabs and 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
;;(menu-bar-mode   -1)

;; Line spacing, can be 0 for code and 1 or 2 for text
(setq-default line-spacing 0)


;; Underline line at descent position, not baseline position
(setq x-underline-at-descent-line t)

;; No ugly button for checkboxes
(setq widget-image-enable nil)

;; Line cursor and no blink
;;(set-default 'cursor-type  '(bar . 1))
;;(blink-cursor-mode 0)

;; No sound
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; No Tooltips
(tooltip-mode 0)

;; Paren mode is part of the theme
(show-paren-mode t)


;; Vertical window divider
(setq window-divider-default-right-width 3)
(setq window-divider-default-places 'right-only)
(window-divider-mode)





;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))


;; font
(setq default-frame-alist '((font . "Inconsolata 18")))

(use-package expand-region
  :ensure t
  :config (global-set-key (kbd "C-=") 'er/expand-region))

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

(add-hook 'text-mode-hook 'auto-fill-mode)
(add-hook 'text-mode-hook 'goto-address-mode)

;; delete whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(use-package rainbow-delimiters
  :ensure t)

(setq custom-theme-directory (concat user-emacs-directory "themes"))
;; (load-theme 'default-black)

;; (set-frame-position nil 0 -24)
;; (set-frame-size nil 134 67)
;; (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
;; (setq-default mode-line-format nil)
 ;;(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
 ;; (add-to-list 'default-frame-alist '(alpha . (85 . 50)))
(setq frame-title-format "")
(setq-default shell-file-name "/bin/bash")
(provide 'setup-core)
