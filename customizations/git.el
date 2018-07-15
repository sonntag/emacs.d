;; This file contains setup for git integrations.

;; Install and setup Magit
(use-package magit
  :pin melpa-stable
  :bind (("C-x g" . magit-status))
  :config (setq magit-git-executable "/usr/local/bin/git"))

;; Git diff highlighting
(use-package diff-hl
  :pin melpa-stable
  :hook ((prog-mode . diff-hl-mode)
         (prog-mode . diff-hl-margin-mode)))
