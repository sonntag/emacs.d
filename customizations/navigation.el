;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.

;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Uniquify.html
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Turn on recent file mode so that you can more easily switch to
;; recently edited files when you first start emacs
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(recentf-mode 1)
(setq recentf-max-menu-items 40)

;; Shows a list of buffers
;; https://www.emacswiki.org/emacs/IbufferMode
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Setup Ivy, Counsel, and Swiper
;; http://oremacs.com/swiper/
(use-package counsel
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d)")
  (ivy-mode 1)

  :bind (("C-s" . swiper)
         ("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("<f1> f" . counsel-describe-function)
         ("<f1> v" . counsel-describe-variable)
         ("<f1> l" . counsel-find-library)
         ("<f2> i" . counsel-info-lookup-symbol)
         ("<f2> u" . counsel-unicode-char)

         ;; Ivy-based interface to shell and system tools
         ("C-c g" . counsel-git)
         ("C-c j" . counsel-git-grep)
         ("C-c k" . counsel-ag)
         ("C-x l" . counsel-locate)
         ("C-S-o" . counsel-rhythmbox)

         ;; resumes the last Ivy-based completion
         ("C-c C-r" . ivy-resume)

         ;; make ivy act like ido
         :map ivy-minibuffer-map
         ("C-j" . ivy-immediate-done)
         ("RET" . ivy-alt-done)))

;; projectile everywhere!
;;(projectile-global-mode)
;;(setq projectile-create-missing-test-files t)
;;(global-set-key (kbd "M-n") 'imenu)
