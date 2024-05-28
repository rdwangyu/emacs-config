(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(eval-when-compile
  (require 'use-package))

(electric-pair-mode t)
(add-hook 'prog-mode-hook #'show-paren-mode)
(column-number-mode t)
(global-auto-revert-mode t)
(delete-selection-mode t)
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(add-hook 'prog-mode-hook #'hs-minor-mode)
(global-display-line-numbers-mode 1)
(tool-bar-mode -1)
(when (display-graphic-p) (toggle-scroll-bar -1))
(savehist-mode 1)
(setq display-line-numbers-type 'relative)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages '(solarized-theme company ace-window)))

(use-package ace-window
  :ensure t)
(global-set-key (kbd "M-o") 'ace-window)

(use-package company
  :ensure t)
(add-hook 'after-init-hook 'global-company-mode)

(use-package solarized-theme
  :ensure t)
(load-theme 'solarized-dark t)

(provide 'init)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
