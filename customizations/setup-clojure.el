;;;;
;; Clojure
;;;;

;; Setup clojure mode
(use-package clojure-mode
  :pin melpa-stable
  :config
  ;;(require 'clojure-mode-extra-font-locking)
  (setq clojure-indent-style :align-arguments))

(add-hook 'clojure-mode-hook
          (lambda ()
            (setq inferior-lisp-program "lein repl")
            (put-clojure-indent 'reg-event-db 1)
            (put-clojure-indent 'reg-event-fx 1)
            (put-clojure-indent 'reg-fx 1)
            (put-clojure-indent 'reg-cofx 1)
            (put-clojure-indent 'reg-sub 1)
            (put-clojure-indent 'bind-relations 1)
            (put-clojure-indent 'react-method 1)
            (put-clojure-indent 'render 1)
            (put-clojure-indent 'componentDidMount 1)
            (put-clojure-indent 'componentWillUnmount 1)
            (put-clojure-indent 'componentDidUpdate 1)
            (subword-mode)))

;;;;
;; Cider
;;;;

;; provide minibuffer documentation for the code you're typing into the repl
(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'eldoc-mode)

;; autocomplete
(add-hook 'cider-mode-hook #'company-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
