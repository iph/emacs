(add-to-list 'load-path "/home/sean/go/src/github.com/dougm/goflymake")
(require 'flycheck)
(require 'go-flycheck)
(setenv "GOPATH" "/home/sean/go")
(setenv "GOROOT" "/usr/local/go")
(setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/go/bin" ":" "/usr/local/bin" ":" "/usr/local" ":" "/home/sean/go/bin"))
(setq exec-path (split-string (getenv "PATH") path-separator))

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(add-hook 'before-save-hook #'gofmt-before-save)
(add-hook 'go-mode-hook 'flycheck-mode)
(setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs-backups"))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs-backups/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs-backups/"))))
 )
