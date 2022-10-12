(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (progn (projectile-mode 1)
         ))

(use-package ag
  :ensure t)

(use-package company
  :ensure t
  :init (global-company-mode))

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
