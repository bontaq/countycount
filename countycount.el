(defun county-count (mark point)
  (interactive "r")
  (save-excursion
    (goto-char mark)
    (let ((line 0))
      (while (re-search-forward "[0-9]+" point t)
        (replace-match (format "%s" line))
        (setq line (+ line 1))))))

(provide 'county-count)
