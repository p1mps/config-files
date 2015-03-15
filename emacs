;;emacs on mac
;;brew install emacs --cocoa --srgb

;;melpa
(require 'package)
(add-to-list 'package-archives
'("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
;; For important compatibility libraries like cl-lib
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Load all ".el" files under ~/.emacs.d/config directory.
(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/config")


;;save desktop file
(desktop-save-mode 1)

;; midnight mode purges buffers which haven't been displayed in 3 days
(setq midnight-mode 't)

;;ido plugin
(ido-mode t)

;;syntax highlighting
(global-font-lock-mode 't)

;;disabling the menu
(tool-bar-mode -1)
(menu-bar-mode -1)

;;flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
;;check parenthesis
(show-paren-mode 1)
;;line numbers
(global-linum-mode 1)
;;expand region shortcut
(global-set-key (kbd "C-=") 'er/expand-region)
;;auto indent
(auto-indent-global-mode)
;;{} on osx
(setq mac-option-modifier nil
mac-command-modifier 'meta
x-select-enable-clipboard t)
;;autocomplete and yasnippet
(yas-global-mode 1)
(auto-complete-mode 1)
(setq-default tab-width 4)
(global-set-key (kbd "RET") 'newline-and-indent)

(setq multi-term-program "/bin/zsh")

;;drag and stuff
(drag-stuff-global-mode)

;;increase text
(global-set-key [C-kp-add] 'text-scale-increase)
(global-set-key [C-kp-subtract] 'text-scale-decrease)
;;auto revert
(global-auto-revert-mode t)
;;show git
(global-git-gutter-mode t)
(global-git-gutter-mode t)
;;buffer names
(setq uniquify-buffer-name-style 'forward)
(provide '.emacs)
