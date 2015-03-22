(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(setq web-mode-engines-alist
      '(("php" . "\\.phtml\\'")
        ("blade" . "\\.blade\\."))
      )


(setq-default indent-tabs-mode nil)
(setq web-mode-code-indent-offset 4)
(setq web-mode-indent-style 4)


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


(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

