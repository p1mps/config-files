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

(use-package flycheck-pos-tip
  :ensure t
  :config
  (use-package flycheck
    :config
    (setq flycheck-display-errors-function 'flycheck-pos-tip-error-messages)))

(defun my-php-mode-hook
    (flycheck-select-checker phpstan))

(provide 'setup-flycheck)
