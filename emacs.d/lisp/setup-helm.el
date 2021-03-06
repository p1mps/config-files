(use-package helm
  :ensure t
  :init
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
  (global-set-key (kbd "C-c j") 'helm-imenu)
  ;; shell history.
  (define-key shell-mode-map (kbd "C-c C-l") 'helm-comint-input-ring)

  ;; use helm to list eshell history
  (add-hook 'eshell-mode-hook
            #'(lambda ()
                (substitute-key-definition 'eshell-list-history 'helm-eshell-history eshell-mode-map)))

  (helm-mode 1))

(use-package helm-projectile
  :ensure t
  :config
  (bind-key "C-c b" 'helm-buffers-list)
  (bind-key "C-c f" 'helm-projectile-find-file-dwim)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on))

(provide 'setup-helm)
