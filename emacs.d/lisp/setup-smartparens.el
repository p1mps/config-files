(use-package smartparens-config
    :ensure smartparens
    :config
    (progn
      (require 'smartparens-config)
      (show-smartparens-global-mode t)))

(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
(provide 'setup-smartparens)
