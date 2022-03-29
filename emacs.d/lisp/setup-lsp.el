(use-package lsp-mode
  :ensure t
  :defer t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (progn
    (setq lsp-prefer-flymake nil)
    (setq lsp-lens-enable nil)
    (setq lsp-headerline-breadcrumb-enable) nil)
  :after dap-chrome
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (java-mode . lsp)
         (js2-mode . lsp)
         (web-mode . lsp)
         (clojure-mode . lsp)
         (clojurescript-mode . lsp)
         (clojurec-mode . lsp)

         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

;; (use-package lsp-javascript-flow :quelpa
;;   :ensure t
;;   :init
;;   (progn (add-hook 'js-mode-hook #'lsp-javascript-flow-enable)
;;          (add-hook 'js2-mode-hook #'lsp-javascript-flow-enable))
;;   )

;;(quelpa '(lsp-javascript-flow :fetcher github :repo "stevenremot/emacs-lsp-javascript-flow"))

(use-package dap-mode
  :ensure t
  :config (dap-auto-configure-mode))

;; (use-package lsp-ui
;;   :ensure t
;;   :commands lsp-ui-mode
;;   :config (setq lsp-ui-sideline-show-code-actions nil))

;; (use-package dap-mode
;;   :ensure t
;;   :after lsp-mode :config (dap-auto-configure-mode))

(use-package helm-lsp
  :ensure t
  :commands helm-lsp-workspace-symbol)
;;(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)

(add-hook 'clojure-mode-hook 'lsp)
(add-hook 'clojurescript-mode-hook 'lsp)
(add-hook 'clojurec-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      lsp-headerline-breadcrumb-enable nil
      company-idle-delay 0.2
      company-minimum-prefix-length 1
      ;; lsp-lens-enable t
      lsp-file-watch-threshold 10000
      lsp-signature-auto-activate nil
      lsp-clojure-custom-server-command '("/usr/local/bin/clojure-lsp")
      ;; I use clj-kondo from master
      lsp-diagnostics-provider :none
      lsp-enable-indentation nil ;; uncomment to use cider indentation instead of lsp
      ;; lsp-enable-completion-at-point nil ;; uncomment to use cider completion instead of lsp
)

(provide 'setup-lsp)
