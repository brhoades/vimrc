(use-package typescript-mode)

(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-mode))

(defun typescript-mode-hook ()
  "Hooks for TS mode."
  (setq typescript-indent-offset 2)
)