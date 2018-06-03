(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme 'dark)
  (sml/setup))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn))

(provide 'setup-theme)
