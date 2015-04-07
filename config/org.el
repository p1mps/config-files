(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/org")
(setq org-agenda-files (list "~/Dropbox/org/agenda.org"))
;; Set to the name of the file where new notes will be stored
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-inbox-for-pull (concat org-directory "/index.org"))
(setq org-mobile-files (cons (expand-file-name "earthbox.org" org-directory)
                             org-agenda-files))
