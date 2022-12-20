;; .emacs
;; Need package to load rest of them..
(require 'package)
(package-initialize)

;; Pretty 3P packages.
(require 'flex-autopair)
(require 'expand-region)
(require 'multiple-cursors)
(require 'rainbow-delimiters)
(require 'key-chord)
(require 'undo-tree)
(require 'ido)
(require 'web-mode)
(require 'emmet-mode)
(require 'ace-jump-mode)
(require 'magit)
(require 'browse-kill-ring)
(require 'expand-region)
(require 'rust-mode)
(require 'go-mode)
(require 'markdown-mode)
(require 'nlinum)


(load-theme 'afternoon t)


(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.


;; ido specifics for better file matching.
;;(setq ido-enable-flex-matching t)
;;(setq ido-everywhere t)
;;(ido-mode t)

;; Remove annoyingness that is emacs.
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Highlighted deleting
(pending-delete-mode t)

;; Package specific variables.
(key-chord-mode 1)
;;(ido-mode t)

;; Normal key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key (kbd "C-'") 'er/contract-region)
(global-set-key (kbd "C-M-m") 'ace-jump-word-mode)
(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-;") 'er/expand-region)

(global-set-key (kbd "C-`") 'point-to-register)
(global-set-key (kbd "C-~") 'jump-to-register)
(global-set-key (kbd "C-d") 'backward-kill-word)
(global-set-key (kbd "M-d") 'backward-kill-sentence)

;; key-chord specific variables.
(key-chord-define-global "qe" 'bookmark-jump)
(key-chord-define-global "qr" 'list-bookmarks)
(key-chord-define-global "qw" 'bookmark-set)
(key-chord-define-global "hj" 'undo)
(key-chord-define-global "jk" 'ace-jump-char-mode)
(key-chord-define-global "/a" 'point-to-register)
(key-chord-define-global "/s" 'jump-to-register)
(key-chord-define-global "uu" 'undo-tree-visualize)
(key-chord-define-global "xx" 'execute-extended-command)
(key-chord-define-global "yy" 'browse-kill-ring)



;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; (require 'un-define)
(setq-default indent-tabs-mode nil)

;; Lets face it, the original org-todo keywords weren't enough
(setq org-todo-keywords
'(
  (sequence "TODO" "|" "DONE" "WISHLIST")
  (sequence "BLOCKED" "LEARNING" "|" "CURRENT" "FINISHED")
  (sequence "IDEA" "PROGRESS" "|" "FINISHED")
  ))
(setq org-log-done 'time)

(setq org-todo-keyword-faces
      '(
        ("TODO"
         :weight bold
         :foreground "#FC5B3F")
        ("DONE"
         :weight bold
         :foreground "#6CB045")
        ("WISHLIST"
         :weight bold
         :foreground "#FCB03C")
       )
)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-done ((t (:foreground "chartreuse4"))))
 '(org-done ((t (:foreground "chartreuse3"))))
 ;'(org-level-3 ((t (:inherit outline-5))))
 '(org-todo ((t (:foreground "firebrick3")))))
(put 'temporary-file-directory 'standard-value '((file-name-as-directory "/tmp")))
