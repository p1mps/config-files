(use-package beacon
  :ensure t
  :config (beacon-mode 1))

(use-package dumb-jump
  :ensure t
  :config
  (progn
    (setq dumb-jump-selector 'helm)
    (setq xref-backend-functions (remq 'etags--xref-backend xref-backend-functions))
    (add-to-list 'xref-backend-functions #'dumb-jump-xref-activate t)))

(use-package dashboard
  :ensure t
  :config
  (progn
    (dashboard-setup-startup-hook)
    (setq dashboard-items '((recents  . 5) (projects . 5)))))

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
  :ensure t
  :config
  (setq multi-term-program "/bin/zsh"))

(use-package move-text
  :ensure t
  :config (move-text-default-bindings))

(use-package rainbow-delimiters
  :ensure t
  :config (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package restart-emacs
  :ensure t)

(use-package spotify
  :ensure t)

(use-package desktop+
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
(global-set-key (kbd "M-,") 'pop-global-mark)
(global-set-key (kbd "C-c pf") 'helm-find-files)
;;(global-set-key (kbd "C-c bb") 'helm-buffer-list)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c pw") 'projectile-switch-project)
(global-set-key (kbd "C-c pa") 'projectile-ag)
;;(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-c /") 'comment-region)
(global-set-key (kbd "C-c s p") 'spotify-play)
(global-set-key (kbd "C-c s s") 'spotify-pause)
(global-set-key (kbd "C-c s n") 'spotify-next)
(global-set-key (kbd "C-c j") 'join-line)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "M-n") 'move-beginning-of-line)

(global-set-key (kbd "<RET>") 'newline-and-indent)
(global-set-key (kbd "C-c x g") 'xwidget-webkit-browse-url)
(global-set-key (kbd "C-c t t") 'multi-term)
(global-set-key (kbd "C-c c") 'term-char-mode)
(global-set-key (kbd "C-c l") 'term-line-mode)
(global-set-key (kbd "C-c o a") 'org-agenda)

(global-set-key (kbd "C-c o i") 'org-roam-node-insert)
(global-set-key (kbd "C-c o f") 'org-roam-node-find)
(global-set-key (kbd "C-c o c") 'org-roam-capture)

(require 'ts)

;; (global-set-key (kbd "C-M-a") 'backward-sentence)
;; (global-set-key (kbd "C-M-f") 'forward-sentence)

;; (global-set-key (kbd "M-a") 'beginning-of-defun)
;; (global-set-key (kbd "M-f") 'end-of-defun)

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

;;(global-linum-mode 1)
(global-prettify-symbols-mode 1)

;; no tabs and 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

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
(setq window-divider-default-right-width 0)
(setq window-divider-default-places 'right-only)
(window-divider-mode)


;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))


;; font
(setq default-frame-alist '((font . "Inconsolata 14")))

(set-face-attribute 'default nil
                    :family "Inconsolata"
                    :height 140
                    :weight 'normal
                    :width 'normal)

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

(setq-default truncate-lines t)

;;(set-frame-position nil 0 -24)
;;(set-frame-size nil 134 67)
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
;; (setq-default mode-line-format nil)
(set-frame-parameter (selected-frame) 'alpha '(90 . 50))
(add-to-list 'default-frame-alist '(alpha . (90 . 50)))
(setq frame-title-format "")
(setq-default shell-file-name "/bin/bash")
;; (quelpa
;;  '(quelpa-use-package
;;    :fetcher git
;;    :url "https://github.com/quelpa/quelpa-use-package.git"))
;; (require 'quelpa-use-package)


;; (use-package shelldon
;;   :quelpa (shelldon :fetcher github :repo "Overdr0ne/shelldon"))

(defun shell-command-on-buffer (command)
  (interactive "sShell command on buffer: ")
  (shell-command-on-region (point-min) (point-max) command t))

;;(shell-command-on-buffer "ls")

(setq comint-output-filter-functions
      (remove 'ansi-color-process-output comint-output-filter-functions))

;; (add-hook 'shell-mode-hook
;;           (lambda ()
;;             ;; Disable font-locking in this buffer to improve performance
;;             ;;(font-lock-mode -1)
;;             ;; Prevent font-locking from being re-enabled in this buffer
;;             (make-local-variable 'font-lock-function)
;;             (setq font-lock-function (lambda (_) nil))
;;             (ansi-color-for-comint-mode-on)
;;             (add-hook 'comint-preoutput-filter-functions 'xterm-color-filter nil t)))

(setenv "TERM" "xterm-256color")

(setq explicit-shell-file-name "/bin/zsh")

(use-package eterm-256color
  :ensure t)

(add-hook 'term-mode-hook
          (lambda ()
            (eterm-256color-mode)
            (define-key term-raw-map (kbd "C-y") 'term-paste)))


(use-package ace-window
  :ensure t
  :config
  (global-set-key (kbd "M-o") 'ace-window))

(use-package xterm-color
  :ensure t)

(use-package highlight-indentation
  :ensure t)

(use-package dot-mode
  :ensure t
  :config
  (progn  (setq dot-mode-global-mode t)
          (global-set-key (kbd "M-/") 'dot-mode-execute)))

(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

(use-package spaceline
  :ensure t)

(use-package spaceline-config
  :ensure spaceline
  :init
  (progn
    (spaceline-emacs-theme)
    (spaceline-toggle-minor-modes-off)
    (spaceline-toggle-buffer-encoding-off)
    (spaceline-toggle-buffer-encoding-abbrev-off)
    (spaceline-toggle-projectile-root-on)
    (spaceline-toggle-buffer-modified-on)
    (spaceline-toggle-window-number-on))
  :config
  (setq powerline-default-separator 'arrow-fade)
  (setq spaceline-workspace-numbers-unicode t)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (spaceline-define-segment line-column
    "The current line and column numbers."
    "l:%l c:%2c")
  (spaceline-define-segment time
    "The current time."
    (format-time-string "%h %d %H:%d"))
  (spaceline-toggle-time-on)
  (spaceline-emacs-theme 'time))


(use-package ts
  :ensure t)

(defun yesterday-notes ()
    (interactive)
    (let* ((yesterday (ts-format "%Y-%m-%d" (ts-adjust 'day -1 (ts-now))))
           (path (concat
              "/home/p1mps/work/journal/"
              yesterday
              ".org")))
  (find-file path)))

(provide 'setup-core)
