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
  :ensure t)
  
(provide 'setup-projectile)
