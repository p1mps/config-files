(use-package helm
  :ensure t
  :init
  (setq helm-M-x-fuzzy-match t
  helm-mode-fuzzy-match t
  helm-buffers-fuzzy-matching t
  helm-recentf-fuzzy-match t
  helm-locate-fuzzy-match t
  helm-semantic-fuzzy-match t
  helm-imenu-fuzzy-match t
  helm-completion-in-region-fuzzy-match t
  helm-candidate-number-list 150
  helm-split-window-inside-p t
  helm-move-to-line-cycle-in-source t
  helm-echo-input-in-header-line t
  helm-autoresize-max-height 0
  helm-autoresize-min-height 20)
  :config
  (global-set-key (kbd "C-x C-m") 'helm-M-x)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (global-set-key (kbd "C-x b") 'helm-mini)
  (global-set-key (kbd "C-x C-b") 'helm-buffers-list)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-h f") 'helm-apropos)
  (global-set-key (kbd "C-h r") 'helm-info-emacs)
  (global-set-key (kbd "C-h C-l") 'helm-locate-library)
  (global-set-key (kbd "M-x") 'helm-M-x)
  ;; shell history.
  (define-key shell-mode-map (kbd "C-c C-l") 'helm-comint-input-ring)

  ;; use helm to list eshell history
  (add-hook 'eshell-mode-hook
            #'(lambda ()
                (substitute-key-definition 'eshell-list-history 'helm-eshell-history eshell-mode-map)))

  (substitute-key-definition 'find-tag 'helm-etags-select global-map)
  (helm-mode 1)

  (substitute-key-definition 'find-tag 'helm-etags-select global-map))



(use-package helm-projectile
  :ensure t
  :config (bind-key "C-c C-b" 'helm-buffers-list)
  (bind-key "C-c C-t" 'helm-projectile-find-file-dwim)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on))

(provide 'setup-helm)
