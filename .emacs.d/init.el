; emacs config -- justinac0

(load-file "~/.emacs.d/themes/berrys-theme.el")
(load-theme 'berrys t)

; disable visual defaults
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

; default opening directory
(setq default-directory "~/Documents")

; disable keybinds (closing and minifying window)
(global-set-key (kbd "C-x C-c") nil)
(global-set-key (kbd "C-x C-z") nil)

; linenumber
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

; tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(setq-default c-basic-offset 4)

; buffers
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(add-to-list 'default-frame-alist '(font . "JetBrains Mono 12"))
(set-face-attribute 'default t :font "JetBrains Mono 12")

(add-hook 'minibuffer-exit-hook
          '(lambda ()
             (let ((buffer "*Completions*"))
               (and (get-buffer buffer)
                    (kill-buffer buffer)))))

(setq ring-bell-function 'ignore)

; change backup file directory
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

; enable ido-mode
(require 'ido)
(ido-mode)

(require 'company)
(add-hook 'glocal-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)


(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(company-c-headers auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
