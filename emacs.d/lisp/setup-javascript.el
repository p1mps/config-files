(setq exec-path (append exec-path '("~/.nvm/versions/node/vv11.11.0/bin")))

(use-package tide
  :ensure t
  :init
  (setq tide-tsserver-executable "~/.nvm/versions/node/v11.11.0/bin/tsserver"))


(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; \M-x package-install [ret] company``
  (company-mode +1))



(setq company-tooltip-align-annotations t)



;; formats the buffer before saving

;;(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'js2-mode-hook #'setup-tide-mode)

;; configure javascript-tide checker to run after default javascript checker

(flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)

(use-package web-mode
  :ensure t
  :config
  (progn
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))))

(use-package js2-mode
  :ensure t

  )

(provide 'setup-javascript)
