;; This file contains setup for things that are common
;; across all programming modes.

;; Setup autocomplete
(use-package company
  :hook (prog-mode . company-mode))

;; Use aggressive indent for programming modes
(use-package aggressive-indent
  :hook (prog-mode . aggressive-indent-mode))
