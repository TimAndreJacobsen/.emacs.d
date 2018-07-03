
;; open in fullscreen
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; supress windows sounds
(setq visible-bell 1)

;; backup handling
;; saves all backups to ~/.saves
(setq backup-directory-alist `(("." . "~/.saves")))
;; sets backup method to copy
(setq backup-by-copying t)
;; sets backup limit
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)


(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

(package-initialize)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (sml-mode dracula-theme zenburn-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.


'(default ((t (:family "DejaVu Sans Mono" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))

(load-theme 'dracula t)
