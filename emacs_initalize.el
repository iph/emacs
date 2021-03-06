;; .emacs
;; Need package to load rest of them..
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.milkbox.net/packages/") t)


(package-install 'autopair)
(package-install 'expand-region)
(package-install 'multiple-cursors)
(package-install 'undo-tree)
(package-install 'rainbow-delimiters)
(package-install 'key-chord)
(package-install 'web-mode)
(package-install 'ace-jump-mode)
(package-install 'afternoon-theme)
(package-install 'browse-kill-ring)
(package-install 'expand-region)
(package-install 'magit)
(package-install 'color-theme)
(package-install 'markdown-mode)
(package-install 'nlinum)
(package-install 'rust-mode)
(package-install 'go-mode)
(require 'web-mode)
(package-install 'emmet-mode)
