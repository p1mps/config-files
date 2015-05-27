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
(setenv "PATH"
		(concat
		 "/usr/local/Cellar/ghostscript/9.15/bin/" ":"
		 "/usr/local/Cellar/aspell/0.60.6.1/bin/" ":"
		 "/usr/texbin" ":"
		 (getenv "PATH")
		 )
		)
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
(global-auto-complete-mode 1)
;;always use spaces, not tabs, when indenting
(setq indent-tabs-mode nil)
(setq-default tab-width 4)
(setq tab-width 4)
(global-set-key (kbd "RET") 'newline-and-indent)
(setq multi-term-program "/bin/zsh")
;;dragandstuff
(drag-stuff-global-mode)
;;increasetext
(global-set-key [C-kp-add] 'text-scale-increase)
(global-set-key [C-kp-subtract] 'text-scale-decrease)
;;autorevert
(global-auto-revert-mode t)
;;showgit
(global-git-gutter-mode t)
;;buffernames
(setq uniquify-buffer-name-style 'forward)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-auto-complete-mode 1)
(getenv "PATH")
(setenv "PATH"
(concat
"/usr/texbin" ":"
(getenv"PATH")))
(add-hook 'LaTeX-mode-hook #'latex-extra-mode)
(global-set-key "\C-ct" 'google-translate-smooth-translate)
(window-number-meta-mode 1)
(setq x-select-enable-clipboard nil)
(turn-on-pbcopy)
(flymake-php-load)
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")
(window-number-mode 1)
(add-hook 'LaTeX-mode-hook #'latex-extra-mode)
(latex-preview-pane-enable)
(add-hook 'text-mode-hook 'auto-fill-mode)
(google-this-mode 1)
(global-set-key (kbd "\C-cg") 'google-this-mode-submap)
(setq fci-rule-width 1)
(setq fci-rule-color "gray")
(setq fci-rule-column 100)
(setq fci-rule-use-dashes 1)
(fci-mode 1)
(custom-set-variables
;;custom-set-variableswasaddedbyCustom.
;;Ifyouedititbyhand,youcouldmessitup,sobecareful.
;;Yourinitfileshouldcontainonlyonesuchinstance.
;;Ifthereismorethanone,theywon'tworkright.
'(doc-view-ghostscript-program"/usr/local/Cellar/ghostscript/9.15/bin/gs"))
(custom-set-faces
;;custom-set-faceswasaddedbyCustom.
;;Ifyouedititbyhand,youcouldmessitup,sobecareful.
;;Yourinitfileshouldcontainonlyonesuchinstance.
                                                ;;Ifthereismorethanone,theywon'tworkright.
 )
(setq case-fold-search t)
(highlight-current-line-on t)
;;Tocustomizethebackgroundcolor
(set-face-background 'highlight-current-line-face "#gray6")
(exec-path-from-shell-initialize)
(setq default-cursor-type 'bar)
(projectile-global-mode)
(provide'.emacs)









