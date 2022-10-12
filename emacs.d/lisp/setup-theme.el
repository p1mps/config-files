;; (deftheme default-black
;;   "Automatically created 2013-05-20.")

;; (custom-theme-set-faces
;;  'default-black
;;  '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "White" :inverse-video nil :box nil :strike-t*hrough nil :overline nil :underline nil :slant normal :weight normal :width normal :height 105))))
;;  '(highlight ((((class color) (min-colors 88) (background dark)) (:background "#111111"))))
;;  '(region ((nil (:background "#464740"))))
;;  '(hl-line ((nil (:background "#222222"))))
;;  '(yas-field-highlight-face ((nil (:background "#333399"))))
;;  '(js2-function-param-face ((t (:foreground "LightGoldenrod"))))
;;  '(font-lock-warning-face ((nil (:foreground "#ff6666"))))
;;  '(show-paren-match ((nil (:background "#333399"))))
;;  '(show-paren-mismatch ((((class color)) (:background "red")))))


;; (provide-theme 'default-black)
(use-package ewal
  :init (setq ewal-use-built-in-always-p nil
              ewal-use-built-in-on-failure-p t
              ewal-built-in-palette "sexy-material"
              ewal-json-file "~/.cache/wal/colors.json")
  )

;; green black ftw
;; (add-to-list 'default-frame-alist '(foreground-color . "white"))
;; (add-to-list 'default-frame-alist '(background-color . "black"))

(use-package ewal-spacemacs-themes
  :ensure t)

(use-package theme-magic
  :ensure t)

(setq system-uses-terminfo nil)
(setq multi-term-program "/bin/zsh")

(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 10000)
            (define-key term-raw-map (kbd "C-y") 'term-paste)
            (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))
            (setq show-trailing-whitespace nil)
             (face-remap-add-relative 'default
                           :background "black"
                           :foreground "green")
            ))



(load-theme 'default-black t)

(set 'xterm-standard-colors
  '(("black"          0 (  0   0   0))
    ("red"            1 (255   0   0))
    ("green"          2 (  0 255   0))
    ("yellow"         3 (255 255   0))
    ("blue"           4 (  0   0 255))
    ("magenta"        5 (255   0 255))
    ("cyan"           6 (  0 255 255))
    ("white"          7 (255 255 255))
    ("brightblack"    8 (127 127 127))
    ("brightred"      9 (255   0   0))
    ("brightgreen"   10 (  0 255   0))
    ("brightyellow"  11 (255 255   0))
    ("brightblue"    12 (92   92 255))
    ("brightmagenta" 13 (255   0 255))
    ("brightcyan"    14 (  0 255 255))
    ("brightwhite"   15 (255 255 255)))
  )

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)


;; (set-frame-parameter (selected-frame) 'alpha '(90 . 90))
;; (use-package zenburn-theme
;;   :ensure t)

;; (load-theme 'zenburn t)
;; (use-package atom-dark-theme
;;   :ensure t
;;   :config
;;   (load-theme 'atom-dark))

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (load-theme 'base16-default-dark t))
(provide 'setup-theme)
