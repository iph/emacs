(setq exec-path (split-string (getenv "PATH") path-separator))
(setq temporary-file-directory "~/.emacs.d/tmp/")



;; Remove annoying save files. Put them somewhere nice and safe for when you do screw up :)
(setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs-backups"))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs-backups/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs-backups/"))))
 )
;; Yay mac modifiers.
(setq mac-command-modifier 'meta)

;; Comment this line out on new systems or put it in the default init scripts.. Soon..
;;(set-default-font "Inconsolata-13")
;;(set-frame-font "Inconsolata-13")

