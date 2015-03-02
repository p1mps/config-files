;;save session
(desktop-save-mode 1)

;;colors
(add-to-list 'default-frame-alist '(foreground-color . "green"))
(add-to-list 'default-frame-alist '(background-color . "black"))

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
(defun setup-php ()
  ;; enable web mode
  (web-mode)

  ;; make these variables local
  (make-local-variable 'web-mode-code-indent-offset)
  (make-local-variable 'web-mode-markup-indent-offset)
  (make-local-variable 'web-mode-css-indent-offset)

  ;; set indentation, can set different indentation level for different code type
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2))
  (setq web-mode-ac-sources-alist
      '(("css" . (ac-source-words-in-buffer ac-source-css-property))
        ("html" . (ac-source-words-in-buffer ac-source-abbrev))
        ("php" . (ac-source-words-in-buffer
                  ac-source-words-in-same-mode-buffers
                  ac-source-dictionary))))
;; (flycheck-define-checker my-php
;;   "A PHP syntax checker using the PHP command line interpreter.

;; See URL `http://php.net/manual/en/features.commandline.php'."
;;   :command ("php" "-l" "-d" "error_reporting=E_ALL" "-d" "display_errors=1"
;;             "-D" "log_errors=0" source)
;;   :error-patterns
;;   ((error line-start (or "Parse" "Fatal" "syntax") " error" (any ":" ",") " "
;;           (message) " in " (file-name) " on line " line line-end))
;;   :modes (php-mode php+-mode web-mode))

(add-to-list 'auto-mode-alist '("\\.php$" . setup-php))

;;parenthesis
(show-paren-mode 1)
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

(global-hl-line-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)
