(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)
    (quelpa-self-upgrade)
    (quelpa
     '(quelpa-use-package
       :fetcher git
       :url "https://github.com/quelpa/quelpa-use-package.git"))
    ))

(require 'quelpa-use-package)
(require 'use-package)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'setup-core)
(require 'setup-java)
(require 'setup-helm)
(require 'setup-projectile)
(require 'setup-lsp)
(require 'setup-cider)
;;(require 'setup-flycheck)
(require 'setup-theme)
(require 'setup-treemacs)
(require 'setup-javascript)
(require 'setup-yaml)
(require 'setup-java)
(require 'setup-org)

(desktop+-load "code")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "5a611788d47c1deec31494eb2bb864fde402b32b139fe461312589a9f28835db" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "8a379e7ac3a57e64de672dd744d4730b3bdb88ae328e8106f95cd81cbd44e0b6" "2035a16494e06636134de6d572ec47c30e26c3447eafeb6d3a9e8aee73732396" "ba72dfc6bb260a9d8609136b9166e04ad0292b9760a3e2431cf0cd0679f83c3a" "41098e2f8fa67dc51bbe89cce4fb7109f53a164e3a92356964c72f76d068587e" "a40291c12160db922d02e14a9c8ae049396cfabbd818840eab9d87ac8a646d6f" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "8f411ecd50cfd4211ebe29879e57346d8d86145d5903b445fb60858004212d3b" "1fbd63256477789327fe429bd318fb90a8a42e5f2756dd1a94805fc810ae1b62" "5e08fb7b2567442909bb538146110264afc0d8351539abd6640d2441ec812250" "454c1c9ce70f7d807c51c890910365fd3c64a9e63f596511e9ff57dd97bbeea8" "c3957b559cf3606c9a40777c5712671db3c7538e5d5ea9f63eb0729afeac832b" "7beac4a68f03662b083c9c2d4f1d7f8e4be2b3d4b0d904350a9edf3cf7ce3d7f" "409e4d689f1e29e5a18f536507e6dc760ee9da76dc56481aaa0696705e6be968" "87de2a48139167bfe19e314996ee0a8d081a6d8803954bafda08857684109b4e" "fb44ced1e15903449772b750c081e6b8f687732147aa43cfa2e7d9a38820744b" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "ed36f8e30f02520ec09be9d74fe2a49f99ce85a3dfdb3a182ccd5f182909f3ab" "8e51e44e5b079b2862335fcc5ff0f1e761dc595c7ccdb8398094fb8e088b2d50" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "5b7c31eb904d50c470ce264318f41b3bbc85545e4359e6b7d48ee88a892b1915" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "6a0edb6b0f4c6d0566325cf91a1a34daa179e1979136ce0a528bf83aff9b7719" "527df6ab42b54d2e5f4eec8b091bd79b2fa9a1da38f5addd297d1c91aa19b616" "928ed6d4997ec3cdce10b65c59d0f966a61792a69b84c47155cb5578ce2972be" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "02940c38e51991e8ee8ac69537341149d56e9c88d57f2c357eeb1744daad1953" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bc4c89a7b91cfbd3e28b2a8e9e6750079a985237b960384f158515d32c7f0490" "8c1dd3d6fdfb2bee6b8f05d13d167f200befe1712d0abfdc47bb6d3b706c3434" "85e6bb2425cbfeed2f2b367246ad11a62fb0f6d525c157038a0d0eaaabc1bfee" "4a91a64af7ff1182ed04f7453bb5a4b0c3d82148d27db699df89a5f1d449e2a4" "dd4628d6c2d1f84ad7908c859797b24cc6239dfe7d71b3363ccdd2b88963f336" "ef403aa0588ca64e05269a7a5df03a5259a00303ef6dfbd2519a9b81e4bce95c" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "da8e6e5b286cbcec4a1a99f273a466de34763eefd0e84a41c71543b16cd2efac" "780c67d3b58b524aa485a146ad9e837051918b722fd32fd1b7e50ec36d413e70" "deb7ae3a735635a85c984ece4ce70317268df6027286998b0ea3d10f00764c9b" "b4fd44f653c69fb95d3f34f071b223ae705bb691fb9abaf2ffca3351e92aa374" "db510eb70cf96e3dbd48f5d24de12b03db30674ea0853f06074d4ccf7403d7d3" "816bacf37139d6204b761fea0d25f7f2f43b94affa14aa4598bce46157c160c2" "6213a6047cc19f580c37ef3f6d47fd5a55ebdf9b5590475d8f7a6aecd79a1cc0" "24cb0b5666e1e17fb6a378c413682f57fe176775eda015eb0a98d65fbb64b127" default))
 '(imenu-list-auto-resize t t)
 '(imenu-list-focus-after-activation t t)
 '(package-selected-packages
   '(ts exlybar-tray volume log4e fontsloth pcache logito backlight exlybar all-the-icons spaceline smart-mode-line desktop+ exwm org-roam org-download deft afternoon-theme modus-themes highlight-indentation buffer-move wgrep-ag wgrep docker google-this gom-mode go-mode go eterm-256color xterm-color shelldon nginx-mode rjsx-mode color-theme-buffer-local bash-completion lsp-java lsp-javascript-flow quelpa-use-package dap-mode json-mode google-translate arduino-mode cmake-mode sequences auto-package-update idle-highlight-mode csv-mode ox-epub dot-mode flow-js2-mode flow-minor-mode yaml-mode js-mode hide-mode-line eimp htmlize ox-reveal ob-clojure org-present epresent undo-tree zones company-lsp java-mode helm-lsp lsp-mode ewal-spacemacs-themes-colors ewal-doom-themes ewal-spacemacs-themes ewal xresources-theme theme-magic org-journal orgtbl-join ace-jump-mode arc-dark-theme eziam-theme labburn-theme quasi-monochrome-theme punpun-theme immaterial-theme flatland-theme atom-dark atom-dark-theme heroku-theme minimal-theme hl-spotlight ample-zen-theme ample-theme beacon-mode base16-theme zenburn-theme guru-mode gurumode clj-refactor color-theme-sanityinc-tomorrow sublime-themes helm-descbinds spotify soft-charcoal-theme groovy-mode jenkins aggressive-indent aggressive-intent aggressiv-intent evil-leader evil-lisp-state evil-lispy helm-ag helm-rg general olivetti zen-mode web-mode js2-mode treemacs-magit treemacs-icons-dired treemacs-projectile writeroom-mode beacon idle-highlight zenburn flycheck-pos-tip flycheck-clojure zencoding-mode impatient-mode which-key minimap use-package smart-mode-line-powerline-theme restart-emacs rainbow-delimiters neotree multi-term move-text markdown-mode magit helm-projectile god-mode gherkin-mode flycheck-phpstan fill-column-indicator eyebrowse expand-region exec-path-from-shell evil-surround evil-smartparens evil-cleverparens dumb-jump dashboard company cider ag ac-php))
 '(safe-local-variable-values
   '((cider-cljs-repl-types
      (edge "(do (require 'dev-extras) ((resolve 'dev-extras/cljs-repl)))"))
     (cider-repl-init-code "(dev)")
     (cider-ns-refresh-after-fn . "dev-extras/resume")
     (cider-ns-refresh-before-fn . "dev-extras/suspend")))
 '(term-default-bg-color "black")
 '(term-default-fg-color "green"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(put 'downcase-region 'disabled nil)
