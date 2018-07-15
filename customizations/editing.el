;; Customizations related to editing a buffer.

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;; turn on auto-indent globally
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Make sure there is never any trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Never use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Save place in files between sessions
(save-place-mode t)
