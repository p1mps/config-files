(use-package aggressive-indent
  :ensure t)

(use-package clj-refactor
  :ensure t
  :config
  (progn
    (setq cljr-auto-clean-ns -1)
    (setq cljr-auto-sort-ns -1)))

(use-package clojure-mode
  :after aggressive-indent
  :ensure t
  :config
  ;; (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
  ;; (setq clojure-indent-style 'align-arguments)
  (progn
    (setq prettify-symbols-alist
          '(("lambda" . 955)            ; λ
            ("->" . 8594)               ; →
            ("=>" . 8658)               ; ⇒
            ("map" . 8614)              ; ↦
            ))
    (setq clojure-align-forms-automatically t)
    (yas-minor-mode 1)
    (clj-refactor-mode 1)
    (add-hook 'clojure-mode-hook #'paredit-mode)
    (add-hook 'clojure-mode-hook #'clj-refactor-mode)
    (add-hook 'clojure-mode-hook #'subword-mode)
    (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
    (cljr-add-keybindings-with-prefix "C-c C-m")
    (local-set-key [f8] 'cider-pprint-eval-defun-to-comment)))

(use-package cider
  :ensure t
  :config
  (progn
    (setq cider-repl-pop-to-buffer-on-connect nil)
    (setq nrepl-log-messages t)
    (setq cider-repl-use-pretty-printing t)
    (setq cider-repl-buffer-size-limit 100000)
    (setq cider-repl-require-ns-on-set t)
    (setq cider-repl-use-clojure-font-lock nil)
    (setq cider-repl-use-content-types t)
    (setq cider-repl-wrap-history t)
    (setq cider-repl-history-file ".cider-repl-history")
    (setq nrepl-log-messages t)
    ;;(setq lsp-apply-edits-after-file-operations t)

    (add-hook 'cider-mode-hook #'eldoc-mode)
    (add-hook 'cider-repl-mode-hook #'eldoc-mode)
    (add-hook 'cider-repl-mode-hook #'paredit-mode)
    (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)))

(setq cljr-warn-on-eval nil)
(provide 'setup-cider)
