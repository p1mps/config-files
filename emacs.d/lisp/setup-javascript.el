(use-package web-mode
  :ensure t
  :config
  (progn
    (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'"))))
  :init
  (add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode)))


(provide 'setup-javascript)
