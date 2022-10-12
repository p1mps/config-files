(use-package flycheck
  :ensure t)

(use-package flycheck-pos-tip
  :after flycheck
  :ensure t)



(use-package flycheck-clj-kondo
  :ensure t
  :after flycheck)

(provide 'setup-flycheck)
