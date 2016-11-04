(prelude-require-packages '(enh-ruby-mode robe handlebars-mode yaml-mode web-mode smart-tabs-mode sql-indent))

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; [tab] inserts two spaces
(global-set-key "\t" (lambda () (interactive) (insert-char 32 2)))

(global-linum-mode t)

(setq-default indent-tabs-mode nil)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2))

(add-hook 'web-mode-hook  'my-web-mode-hook)

(setq prelude-clean-whitespace-on-save nil)

(setq tab-width 2)

(smart-tabs-insinuate 'ruby 'javascript)

(setq linum-format "%d ")
