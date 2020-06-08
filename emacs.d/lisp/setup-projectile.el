(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1))

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

;; All The Icons
(use-package all-the-icons :ensure t)

;; NeoTree
(use-package neotree
  :ensure t
  :init
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(provide 'setup-projectile)
