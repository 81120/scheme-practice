;; in this file, the author implements
;; a function to insert an element into
;; a list before a given index.
(define insert 
 (lambda (lst index ele)
  (define insert-iter
   (lambda (prev front index ele)
	(cond 
	 ((or (null? lst) (zero? index))
	  (append prev (cons ele front)))
	 (else 
	  (insert-iter (append prev (list (car front))) (cdr front) (- index 1) ele)))))
  (insert-iter '() lst index ele)))
