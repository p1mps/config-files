(use-package org
  :ensure t
  :config
  (progn
    (setq org-todo-keywords '("TODO" "DONE"))
    (defvar org-agenda-include-diary t)
    (defvar org-src-fontify-natively t)
    (setq org-agenda-files (directory-files-recursively "~/work/" "org$"))
    (setq org-agenda-span 'day)
    (setq org-default-notes-file "~/work/organizer.org")))


(use-package org-roam
  :ensure t
  :config
  (progn (setq org-roam-directory (file-truename "~/work"))
         (org-roam-setup)))

(provide 'setup-org)
