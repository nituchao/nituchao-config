;; ================================================================
;; 拷贝整行
;; ================================================================
(defun copy-line (arg)
      "Copy lines (as many as prefix argument) in the kill ring"
      (interactive "p")
      (kill-ring-save (line-beginning-position)
                      (line-beginning-position (+ 1 arg)))
      (message "%d line%s copied" arg (if (= 1 arg) "" "s")))
(global-set-key (kbd "C-c C-k") 'copy-line)

;; ================================================================
;; 剪切整行
;; ================================================================
(defun quick-cut-line ()
  "Cut the whole line that point is on.  Consecutive calls to this command append each line to the kill-ring."
  (interactive)
  (let ((beg (line-beginning-position 1))
	(end (line-beginning-position 2)))
    (if (eq last-command 'quick-cut-line)
	(kill-append (buffer-substring beg end) (< end beg))
      (kill-new (buffer-substring beg end)))
    (delete-region beg end))
  (beginning-of-line 1)
  (setq this-command 'quick-cut-line))
(global-set-key (kbd "C-c C-t") 'quick-cut-line)

;; ===============================================================
;; 复制整行
;; ===============================================================
(defun duplicate-line (&optional n)
      "duplicate current line, make more than 1 copy given a numeric argument"
      (interactive "p")
      (save-excursion
        (let ((nb (or n 1))
          (current-line (thing-at-point 'line)))
          ;; when on last line, insert a newline first
          (when (or (= 1 (forward-line 1)) (eq (point) (point-max)))
        (insert "\n"))

          ;; now insert as many time as requested
          (while (> n 0)
        (insert current-line)
        (decf n)))))
(global-set-key (kbd "C-c C-d") 'duplicate-line)

(provide 'line-copy-config)
