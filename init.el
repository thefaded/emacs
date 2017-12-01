;; Melpa package archive
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Load paths
(add-to-list 'load-path "~/.emacs.d/DaniilPackages/")
(add-to-list 'load-path "~/.emacs.d/DaniilPackages/themes")
(add-to-list 'load-path "~/.emacs.d/DaniilPackages/yasnippet")
(add-to-list 'load-path "~/.emacs.d/DaniilPackages/emmet-mode")
(add-to-list 'load-path "~/.emacs.d/DaniilPackages/markdown")
(add-to-list 'custom-theme-load-path "~/.emacs.d/DaniilPackages/themes")

;; Disable TABS
(setq-default indent-tabs-mode nil)
(setq css-indent-offset 2)

;; Sessions destroy
(desktop-save-mode nil)

;; Shortest variant for yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; Auto-update file in buffer
(global-auto-revert-mode 1)

;; Disable autosave
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

;; Hide menu/tool/scroll bars disable 
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Font
(set-default-font "SF Mono-13")

;; Disable lines
(global-linum-mode -1)

;; === EXTENSIONS ===

;; Emmet mode
(require 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.
(global-set-key (kbd "C-j") 'emmet-expand-line) ;; C-J hotkey.

;; Yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Spacemacs theme
(require 'spacemacs-common)
(load-theme 'spacemacs-dark t)
(set-face-bold-p 'bold nil) ;; Disable bold. Careful with macOS and Monaco font.

;; Auto end ruby
(require 'ruby-end)

;; Buffer show
(require 'bs)
(setq bs-configurations '(("files" "^\\*scratch*\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
(global-set-key (kbd "<f2>") 'bs-show)

;; Makrdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
























;; === ARCHIVE ===

;; === SETTINGS ===

;;(load-theme 'darkokai t)
;;(load-theme 'atom-one-dark t)

;;(set-default-font "Monaco-13")
;;(set-frame-font "Inconsolata-15" t t)

;; === ========== ===
;; === EXTENSIONS ===
;; === ========== ===

;; Ergoemacs
;;(add-to-list 'load-path "~/.emacs.d/ergoemacs-mode")
;;(require 'ergoemacs-mode)
;;(setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
;;(setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
;;(ergoemacs-mode 1)

;; Speedbar
;;(require 'sr-speedbar)
;;(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)
;;(global-set-key (kbd "<f11>") 'sr-speedbar-select-window)

;; Color-theme
;;(add-to-list 'load-path "~/.emacs.d/DaniilPackages/color-theme")
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-robin-hood)

