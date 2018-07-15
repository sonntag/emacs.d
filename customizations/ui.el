;; These customizations change the way emacs looks and disable/enable
;; some user interface elements.

;; Load an intellij-like theme
(use-package idea-darkula-theme
  :config (load-theme 'idea-darkula t))

;; Set the default font for all frames
(add-to-list 'default-frame-alist '(font . "Operator Mono SSm-12"))

;; Turn off blinking cursor
(setq blink-cursor-mode nil)

;; Slightly increase the space between lines
(setq line-spacing 0.1)

;; Turn on highlight lines
(global-hl-line-mode t)

;; Disable splash screen and banner
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; Turn off menu bar
(menu-bar-mode -1)

;; Turn off the graphical toolbar at the top.
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Turn off bell
(setq ring-bell-function 'ignore)
