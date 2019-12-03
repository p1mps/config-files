(use-package cider
  :ensure t)

(use-package flycheck-clojure
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-flycheck-mode)
  :config
  (use-package flycheck
    :config
    (flycheck-clojure-setup)))

(provide 'setup-cider)
