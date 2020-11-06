;;; init-emacs-settings.el --- Settings emacs -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Sets a custom file so it is not in the bottom of the init.el file.
(setq-default custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Add local bin to exec-path
(add-to-list 'exec-path "/usr/local/bin")

;; Fullscreen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Remove toolbar
(tool-bar-mode -1)

;; Remove scrollbar
(if window-system (scroll-bar-mode -1))

;; Show line numbers
(global-display-line-numbers-mode)

;; Turn on visual line mode
(global-visual-line-mode t)

;; Turn off blinking cursor
(blink-cursor-mode 0)

;; See matching pairs of parantheses and other characters
(show-paren-mode 1)

(setq-default
 tab-width 4                   ; Set default tab width to 4 spaces
 line-spacing 0
 make-backup-files nil         ; Stop creating backup~ files
 delete-old-versions t         ; Deletes excess backup files silently.
 create-lockfiles nil          ; Disable lockfiles.
 auto-save-default nil         ; Stop creating #autosave# files
 load-prefer-newer t           ; Load the newest version of a file.
 indent-tabs-mode nil          ; Use space instead of tabs for indents.
 sentence-end-double-space nil ; Single space to end a sentence.
 ring-bell-function 'ignore    ; Disable bell ring.
 visible-bell nil              ; Disable visible bell.
 line-number-mode nil          ; Hide line number from mode line.
 dired-use-ls-dired nil        ; Don't use --dired with ls.
 initial-scratch-message ""    ; Start with a blank canvas.
 inbibit-startup-message t     ; Don't show the startup message
 inhibit-startup-screen t      ; Don't show the startup screen
 confirm-kill-emacs 'y-or-n-p  ; y and n instead of yes and no when quitting
 )

(set-face-attribute 'default nil
                    :family "Hasklig"
                    :weight 'normal
                    :width 'normal)

;; Allow y for yes.
(fset 'yes-or-no-p 'y-or-n-p)

(defun jc/reload-emacs-config ()
  (interactive)
  (load-file user-init-file))

(defun jc/server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs))

(provide 'init-emacs-settings)
;;; init-emacs-settings.el ends here
