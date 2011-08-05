
;;don't break lines!
(auto-fill-mode 0) 
;;ido
(require 'ido)
(ido-mode t)

;; Set font
;;(set-default-font "*-lucidatypewriter-medium-*-*-*-12-*-*-*-*-*-*-*")

;; no need for menubar scrollbar toolbar!
;; that is not the real way to use emacs ;)
(tool-bar-mode nil)
(menu-bar-mode nil)
(scroll-bar-mode nil)

;;highlight current line
(global-hl-line-mode 1)


;;plugins
(add-to-list 'load-path
             "~/.emacs.d/plugins/")

;;yasnippet
(require 'yasnippet-bundle)

;;django
(require 'django-html-mode)
(require 'django-mode)
(yas/load-directory "~/.emacs.d/plugins/snippets")
(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))


;;color-theme
(require 'color-theme)
(load "~/.emacs.d/plugins/color-theme-tango.el")
;;(load "~/.emacs.d/plugins/color-theme-charcoal-personal.el")
(color-theme-tango)

;;only 1 tab
(global-set-key (kbd "TAB") 'self-insert-command)


(require 'tabbar)
(tabbar-mode 1)


;; Automate the fetching of mail.
(require 'gnus-demon)

;; Check for new mail once in every this many minutes.
(gnus-demon-add-handler 'gnus-demon-scan-news 5 nil)


;;fullscreen
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))
(global-set-key [(meta return)] 'toggle-fullscreen)
