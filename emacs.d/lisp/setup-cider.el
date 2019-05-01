(use-package cider
  :ensure t)

(setq nrepl-log-messages nil
      cider-pprint-fn 'fipp
      cider-mode-line nil
      cider-prompt-for-symbol nil
      nrepl-hide-special-buffers t
      cider-repl-use-clojure-font-lock t
      cider-repl-use-pretty-printing t
      cider-auto-select-error-buffer t
      cider-stacktrace-default-filters nil
      cider-stacktrace-fill-column nil
      cider-use-overlays nil
      cider-font-lock-dynamically nil
      cider-repl-display-help-banner nil)

(provide 'setup-cider)
