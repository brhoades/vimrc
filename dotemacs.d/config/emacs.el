;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir (format "~/.emacs.d/tmp/backups/"))
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)
; (add-hook 'focus-out-hook 'save-all)

(define-coding-system-alias 'UTF-8 'utf-8)
(define-coding-system-alias 'utf8 'utf-8)

;; Save history
;; (push (cons 'buffer-undo-list buffer-undo-list) ll)

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Whitespace config (no spaces)
(global-whitespace-mode)
(setq whitespace-style '(tabs newline tab-mark newline-mark))
; (set-face-attribute 'whitespace-space " " background nil :foreground "gray30")

;;smex (better M-x)
(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))

(global-set-key [(shift meta x)] (lambda ()
                                   (interactive)
                                   (or (boundp 'smex-cache)
                                       (smex-initialize))
                                   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
                                   (smex-major-mode-commands)))

;; Disable most GUI elements
(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (tooltip-mode 0))

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Save session buffers
(custom-set-variables
  '(desktop-save-mode t)
  '(desktop-restore-eager 3)) ;; only load 3 most recent files

(setq desktop-auto-save-timeout 300)

;; less verbose prompting
(fset 'yes-or-no-p 'y-or-n-p)

;; prevent accidental kills
(defun dont-kill-emacs()
    "Disable C-x C-c binding execute kill-emacs."
      (interactive)
        (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))
(global-set-key (kbd "C-x C-c") 'dont-kill-emacs)
