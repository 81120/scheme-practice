;; in this file, the author implements a
;; function to remove an element from a 
;; list in a given index.

(define remove-at 
 (lambda (lst index)
  (define remove-at-iter 
   (lambda (prev front index)
	(cond 
	 ((and (zero? index) (not (null? front))) (append prev (cdr front)))
	 (else 
	  (remove-at-iter (append prev (list (car front))) (cdr front) (- index 1))))))
  (remove-at-iter '() lst index)))
