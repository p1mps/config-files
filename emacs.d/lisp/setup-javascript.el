;;(setq exec-path (append exec-path '("~/.nvm/versions/node/vv11.11.0/bin")))

(use-package emmet-mode
  :ensure t)


(add-hook 'web-mode-hook  'emmet-mode)

;; formats the buffer before saving
(defun web-mode-init-hook ()
  "Hooks for Web mode.  Adjust indent."
  (setq web-mode-markup-indent-offset 4))

(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlist)))
;; Enable eslint checker for web-mode
(flycheck-add-mode 'javascript-eslint 'web-mode)
;; Enable flycheck globally
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'web-mode-hook  'web-mode-init-hook)

;; configure javascript-tide checker to run after default javascript checker


(use-package web-mode
  :ensure t
  :config
  (progn
    (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))))

(provide 'setup-javascript)
