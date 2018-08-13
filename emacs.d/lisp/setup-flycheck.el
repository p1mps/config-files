(use-package flycheck-phpstan
  :ensure t
  :after flycheck)

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  (add-hook 'php-mode-hook 'my-php-mode-hook)
  :config
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (setq-default phpstan-executable "~/.config/composer/vendor/bin/phpstan"))

(defun my-php-mode-hook
    (flycheck-select-checker phpstan))

(provide 'setup-flycheck)
