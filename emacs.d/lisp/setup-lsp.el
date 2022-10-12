(use-package lsp-mode
  :ensure t
  :defer t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (progn
    ;;(setq lsp-clojure-custom-server-command '("bash" "-c" "/usr/local/bin/clojure-lsp"))
    ;;(setq lsp-prefer-flymake nil)
    ;;(setq lsp-lens-enable nil)
    ;;(setq lsp-headerline-breadcrumb-enable) nil
    (add-hook 'clojure-mode-hook 'lsp)
    (add-hook 'clojurescript-mode-hook 'lsp)
    (add-hook 'clojurec-mode-hook 'lsp)
    (setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      ;;treemacs-space-between-root-nodes nil
      lsp-headerline-breadcrumb-enable nil
      ;;company-idle-delay 0.2
      ;;company-minimum-prefix-length 1
      lsp-lens-enable t
      ;;lsp-file-watch-threshold 10000
      ;;lsp-signature-auto-activate nil
      lsp-clojure-custom-server-command '("bash" "-c" "/usr/local/bin/clojure-lsp")
      ;; I use clj-kondo from master
      ;;lsp-enable-indentation nil ;; uncomment to use cider indentation instead of lsp
      ;; lsp-enable-completion-at-point nil ;; uncomment to use cider completion instead of lsp
      )
    )
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (java-mode . lsp)
         (js2-mode . lsp)
         (web-mode . lsp)
         (clojure-mode . lsp)
         (clojurescript-mode . lsp)
         (clojurec-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  )

(provide 'setup-lsp)
