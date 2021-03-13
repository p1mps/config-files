(use-package cider
  :ensure t
  :defer t
  :config
  (setq
    cider-repl-history-file ".cider-repl-history"  ;; not squiggly-related, but I like it
	nrepl-log-messages t)                          ;; not necessary, but useful for trouble-shooting
  )

(use-package aggressive-indent
  :ensure t)

(use-package clj-refactor
  :ensure t)

(use-package flycheck-clj-kondo
  :ensure t)

(use-package clojure-mode
  :after aggressive-indent flycheck-clj-kondo
  :ensure t
  :config
;;  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
;;  (setq clojure-indent-style 'align-arguments)
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955) ; λ
          ("->" . 8594)    ; →
          ("=>" . 8658)    ; ⇒
          ;;("map" . 8614)   ; ↦
          ))
  (setq clojure-align-forms-automatically t)
  (yas-minor-mode 1)
  (clj-refactor-mode 1)
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'clj-refactor-mode)
  (add-hook 'clojure-mode-hook #'subword-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (cljr-add-keybindings-with-prefix "C-c C-m")
  (require 'flycheck-clj-kondo))

(use-package cider
  :ensure t
  :config
  (setq nrepl-log-messages t)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'paredit-mode)
  (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode))


(use-package clj-refactor
  :ensure t)

(provide 'setup-cider)
