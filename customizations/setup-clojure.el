;;;;
;; Clojure
;;;;

;; Setup clojure mode
(use-package clojure-mode
  :pin melpa-stable
  :hook (clojure-mode . subword-mode)
  :config
  ;;(require 'clojure-mode-extra-font-locking)
  (setq clojure-indent-style :align-arguments))

(use-package clj-refactor
  :pin melpa-stable
  :hook (clojure-mode . clj-refactor-mode)
  :config (cljr-add-keybindings-with-prefix "C-c C-r"))

;;;;
;; Cider
;;;;

(use-package cider
  :pin melpa-stable
  :config
  (setq cider-lein-command "/usr/local/bin/lein")
  (setq cider-inject-dependencies-at-jack-in nil)
  (setq cider-repl-use-pretty-printing t)
  (setq cider-pprint-fn 'puget))

;; provide minibuffer documentation for the code you're typing into the repl
(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'eldoc-mode)

;; autocomplete
(add-hook 'cider-mode-hook #'company-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
