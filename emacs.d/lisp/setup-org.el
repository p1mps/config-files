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

(use-package deft
  :ensure t
  :after org
  :bind
  ("C-c n d" . deft)
  :custom
  (deft-recursive t)
  (deft-use-filter-string-for-filename t)
  (deft-default-extension "org")
  (deft-directory org-roam-directory))


(use-package org-journal
  :bind
  ("C-c n j" . org-journal-new-entry)
  :custom
  (org-journal-date-prefix "#+title: ")
  (org-journal-file-format "%Y-%m-%d.org")
  (org-journal-dir "~/journal")
  (org-journal-date-format "%A, %d %B %Y"))

(use-package org-download
  :ensure t
  :after org
  :bind
  (:map org-mode-map
        (("s-Y" . org-download-screenshot)
         ("s-y" . org-download-yank))))

(setq org-directory (concat (getenv "HOME") "/Documents/notes/"))


(use-package org-roam
  :ensure t
  :after org
  :init (setq org-roam-v2-ack t) ;; Acknowledge V2 upgrade
  :custom
  (org-roam-directory (file-truename org-directory))
  :config
  (org-roam-setup)
  :bind (("C-c n f" . org-roam-node-find)
         ("C-c n r" . org-roam-node-random)
         (:map org-mode-map
               (("C-c n i" . org-roam-node-insert)
                ("C-c n o" . org-id-get-create)
                ("C-c n t" . org-roam-tag-add)
                ("C-c n a" . org-roam-alias-add)
                ("C-c n l" . org-roam-buffer-toggle)))))


(provide 'setup-org)
