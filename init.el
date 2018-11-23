;;;; Packaging

;; Setup MELPA
(require 'package)

(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages
   (quote
    (elm-mode intero yaml-mode counsel exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;; Editor

;; Hide emacs splash screen
(setq inhibit-startup-screen t)

;; Dark emacs theme
(load-theme 'deeper-blue)

;; Hide vertical scroll bar
(toggle-scroll-bar -1)

;; Hide emacs GUI menu
(tool-bar-mode -1)

;; Make font a little bit bigger
(set-face-attribute 'default nil :height 140)

;; Use left alt for meta and right alt for macos 
(setq ns-alternate-modifier 'meta)
(setq ns-right-alternate-modifier 'none)

;; Same PATH environment for emacs gui/terminal
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Auto close braces, brackets, ...
(electric-pair-mode 1)

;; Ivy completion framework
;; https://writequit.org/denver-emacs/presentations/2017-04-11-ivy.html#orgc2d4898
(ivy-mode 1)


;;;; Custom Keys

;; Duplicate a line
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")


;;;; Languages and Formats

;; Haskell
(intero-global-mode 1)
