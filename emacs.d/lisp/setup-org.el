(use-package org
  :ensure t)

(require 'org)
(require 'ob-clojure)

(require 'cider)
(setq org-babel-clojure-backend 'cider)

(setq org-confirm-babel-evaluate nil)
(org-defkey org-mode-map "\C-x\C-e" 'cider-eval-last-sexp)
(org-defkey org-mode-map "\C-c\C-d" 'cider-doc)

(use-package ox-reveal
  :ensure t
  :config
  (setq org-reveal-root "https://revealjs.com/")
  (setq org-reveal-title-slide nil))

(use-package eimp
  :ensure t)

(use-package epresent
  :ensure t
  :config (add-hook 'epresent-start-presentation-hook #'center-current-window))

(use-package org-present
  :ensure t
  :config
  (add-hook 'org-present-mode-hook
               (lambda ()
                 ;; (org-present-narrow)
                 (org-display-inline-images)
                 ;; (org-present-hide-cursor)
                 ;; (org-present-read-only)
                 ))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)
                 (org-present-show-cursor)
                 (org-present-read-write))))


(setq org-default-notes-file "~/Dropbox/org/notes.org")

(use-package hide-mode-line
  :ensure t
  :config
  (add-hook 'completion-list-mode-hook #'hide-mode-line-mode)
  (add-hook 'org-present-mode-hook #'hide-mode-line-mode)
  (add-hook 'neotree-mode-hook #'hide-mode-line-mode)
  )


(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))

(provide 'setup-org)
