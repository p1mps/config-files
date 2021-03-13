(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (setq flycheck-check-syntax-automatically '(save mode-enabled)))

;; (use-package flycheck-clojure
;;   :after flycheck
;;   :ensure t
;;   :commands (flycheck-clojure-setup)               ;; autoload
;;   :config
;;   (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

;; (use-package flycheck-pos-tip
;;   :after flycheck
;;   :ensure t)

(provide 'setup-flycheck)
