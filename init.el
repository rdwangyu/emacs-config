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

(setq org-todo-keywords '((sequence "TODO" "DOING" "DONE")))
(setq org-todo-keyword-faces '(("TODO" . "red")
                               ("DOING" . "yellow")
                               ("DONE" . "green")))


(use-package ace-window
  :ensure t)
(global-set-key (kbd "M-o") 'ace-window)

(use-package company
  :ensure t)
(add-hook 'after-init-hook 'global-company-mode)

(load-theme 'manoj-dark t)

(setq tramp-use-ssh-controlmaster-options nil)

(defun connect-remote ()
  (interactive)
  (dired "/sshx:root@8.140.20.80:"))
(global-set-key (kbd "<f6>") 'connect-remote)

(use-package popwin
  :ensure t)
(require 'popwin)
(popwin-mode 1)

(set-frame-font "Consolas 10" nil t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(use-package buffer-move
  :ensure t)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)
(setq buffer-move-behavior 'move)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(buffer-move solarized-theme popwin melancholy-theme company ace-window)))
