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

(use-package flycheck-pos-tip
  :ensure t
  :config
  (use-package flycheck
    :config
    (setq flycheck-display-errors-function 'flycheck-pos-tip-error-messages)))

(setq nrepl-log-messages nil
      cider-mode-line nil
      cider-prompt-for-symbol nil
      nrepl-hide-special-buffers t
      cider-repl-use-clojure-font-lock t
      cider-repl-use-pretty-printing t
      cider-auto-select-error-buffer t
      cider-stacktrace-default-filters nil
      cider-stacktrace-fill-column nil
      cider-use-overlays nil
      cider-lein-command "/usr/local/Cellar/leiningen/2.8.1/bin/lein"
      cider-font-lock-dynamically nil
      cider-repl-display-help-banner nil)

(provide 'setup-cider)
