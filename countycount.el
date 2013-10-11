(defvar county-count-regex-list nil)

;; (defun county-count-create-regexes (region_string)
;;   (setq county-count-regex-list nil)
;;   (setq region_string (split-string region_string "\n" t))
;;   (let (value)
;;     (dolist (elt region_string value)
;;       (string-match  "^\\(.+\\)[0-9]+[\\+\|\\-]" elt)
;;       (message (match-string 1 elt))
;;       (push (match-string 1 elt) county-count-regex-list))
;;     county-count-regex-list)
;;   )

;; (defun county-count (mark point)
;;   (interactive "r")
;;   (county-count-create-regexes (buffer-substring-no-properties (mark) (point)))
;;   (save-excursion
;;     (goto-char mark)
;;     (let ((line 0))
;;       (while (re-search-forward "[0-9]+[\\+,\\-]" point t)
;;         ;;(replace-match (format "%s" line))
;;         (setq line (+ line 1))))))

(defun countycount-simple (mark point)
  (interactive "r")
  (setq initial-number nil)
  (progn
    (save-excursion
      (goto-char mark)
      (re-search-forward "\\([0-9]\\)" point t)
      (setq initial-number (string-to-number (match-string-no-properties 1)))))
  (when initial-number
    (save-excursion
      (goto-char mark)
      (let ((line initial-number))
        (while (re-search-forward "[0-9+]" point t)
          (replace-match (format "%s" line))
          (setq line (+ line 1))))))
  nil)

;; until first regex matches push into list of searches with initial value
;; set an array of lines for easy reference
;; set initial search
(defun county-count-create-regexes (mark point)
  (interactive "r")
  (setq lines (split-string (buffer-substring-no-properties (mark) (point)) "\n" t))
  (string-match "^\\(.+\\)[0-9]+[\\+\|\\-]" (car lines))
  (setq initial-search (match-string 1 (car lines)))
  (setq end-of-regex nil)
  (when initial-search
    (let ( (i 0))
      (while (not end-of-regex)
        (message initial-search)
        (when (string-match initial-search (nth i lines))
          (setq end-of-regex lines)
          )
        (setq i (+ 1 i)))
      )
    )
  ;; (let (value)
  ;;   (dolist (elt region_string value)
  ;;     (string-match  "^\\(.+\\)[0-9]+[\\+\|\\-]" elt)
  ;;     (message (match-string 1 elt))
  ;;     (push (match-string 1 elt) county-count-regex-list))
  ;;   county-count-regex-list)
  (message initial-search))

;; (provide 'county-count)
(provide 'county-count-simple)
(provide 'county-count-create-regexes)

test: carrier_0+_do
test: carrier_0+_do
test: carrier_b_0+_do

carrier_0+ = models.ForeignKey(Carrier, related_name='+', null=True)
bcarrier_1+_legal_name = models.CharField(null=True, max_length=255)
num_carrier_0_top_rank = models.IntegerField(default=0, null=True)
carrier_0 = models.ForeignKey(Carrier, related_name='+', null=True)
carrier_0_legal_name = models.CharField(null=True, max_length=255)
num_carrier_0_top_rank = models.IntegerField(default=0, null=True)
carrier_0 = models.ForeignKey(Carrier, related_name='+', null=True)
carrier_0_legal_name = models.CharField(null=True, max_length=255)
num_carrier_0_top_rank = models.IntegerField(default=0, null=True)
carrier_0 = models.ForeignKey(Carrier, related_name='+', null=True)
carrier_0_legal_name = models.CharField(null=True, max_length=255)
num_carrier_0_top_rank = models.IntegerField(default=0, null=True)

carrier_0 = models.ForeignKey(Carrier, related_name='+', null=True)
carrier_0_legal_name = models.CharField(null=True, max_length=255)
num_carrier_0_top_rank = models.IntegerField(default=0, null=True)
carrier_1 = models.ForeignKey(Carrier, related_name='+', null=True)
carrier_1_legal_name = models.CharField(null=True, max_length=255)
num_carrier_1_top_rank = models.IntegerField(default=0, null=True)
carrier_2 = models.ForeignKey(Carrier, related_name='+', null=True)
carrier_2_legal_name = models.CharField(null=True, max_length=255)
num_carrier_2_top_rank = models.IntegerField(default=0, null=True)
carrier_3 = models.ForeignKey(Carrier, related_name='+', null=True)
carrier_3_legal_name = models.CharField(null=True, max_length=255)
num_carrier_3_top_rank = models.IntegerField(default=0, null=True)
