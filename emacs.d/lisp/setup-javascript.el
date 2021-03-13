(use-package web-mode
  :ensure t
  :config
  (progn
    (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
    (setq web-mode-content-types-alist '(("tsx" . "\\.tsx[x]?\\'"))))
  :init
  (add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx?$" . web-mode)))


(use-package js2-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(add-hook 'js-mode-hook #'lsp-mode)
(add-hook 'typescript-mode-hook #'lsp-mode) ;; for typescript support
(add-hook 'js2-mode-hook #'lsp-mode) ;; for js3-mode support
(add-hook 'rjsx-mode #'lsp-mode) ;; for rjsx-mode support

(provide 'setup-javascript)
