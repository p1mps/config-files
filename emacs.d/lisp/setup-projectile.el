(use-package projectile
  :ensure t)

(use-package ag
  :ensure t)

(use-package company
  :ensure t
  :init (global-company-mode))

(use-package dumb-jump
  :ensure t)

(use-package fill-column-indicator
  :ensure t
  :init (fci-mode 1))

(use-package neotree
  :ensure t
  :after (evil)
  :config  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter))

(provide 'setup-projectile)
