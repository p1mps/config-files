
;;emacs on mac
;;brew install emacs --cocoa --srgb

(desktop-save-mode 1)
;;(add-to-list 'default-frame-alist '(foreground-color . "white"))
;;(add-to-list 'default-frame-alist '(background-color . "black"))


;; midnight mode purges buffers which haven't been displayed in 3 days
(require 'midnight)
(setq midnight-mode 't)

;;ido plugin
(require 'ido)
(ido-mode t)


;;syntax highlighting
(global-font-lock-mode 't)

;;disabling the menu
(tool-bar-mode -1)
(menu-bar-mode -1)

;;melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


;;editing php files


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\.")))
(setq-default indent-tabs-mode nil)
(setq web-mode-code-indent-offset 4)
(setq web-mode-indent-style 4)
(setq tab-width 4)

(setq php-mode-code-indent-offset 4)
;;   :modes (php-mode php+-mode web-mode))
(add-hook 'after-init-hook #'global-flycheck-mode)


(show-paren-mode 1)
;;parenthesis
;;line numbers
(global-linum-mode 1)
;;expand region shortcut
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
;;auto indent
(auto-indent-global-mode)
;;{} on osx
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

(require 'yasnippet)
(yas-global-mode 1)

(auto-complete-mode 1)

(setq-default tab-width 4)

;;(global-hl-line-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)

(require 'multi-term)
(setq multi-term-program "/bin/zsh")
(require 'moz)

;;; Usage
;; Run M-x moz-reload-mode to switch moz-reload on/off in the
;; current buffer.
;; When active, every change in the buffer triggers Firefox
;; to reload its current page.

(define-minor-mode moz-reload-mode
  "Moz Reload Minor Mode"
  nil " Reload" nil
  (if moz-reload-mode
      ;; Edit hook buffer-locally.
      (add-hook 'post-command-hook 'moz-reload nil t)
    (remove-hook 'post-command-hook 'moz-reload t)))

(defun moz-reload ()
  (when (buffer-modified-p)
    (save-buffer)
    (moz-firefox-reload)))

(defun moz-firefox-reload ()
  (comint-send-string (inferior-moz-process) "BrowserReload();")) 

(require 'zenburn-theme)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

(require 'php-auto-yasnippets)
(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)
(drag-stuff-global-mode)
(auto-complete-mode 1)
(global-set-key [C-kp-add] 'text-scale-increase)
(global-set-key [C-kp-subtract] 'text-scale-decrease)
(global-auto-revert-mode t)
(global-git-gutter-mode t)
(global-git-gutter-mode t)

(require 'magit)
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(provide '.emacs)

