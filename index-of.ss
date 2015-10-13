;; in this file, the author implements
;; a function to find the index of a 
;; given element in a list .

(define index-of
 (lambda (lst ele)
  (define index-of-iter
   (lambda (lst ele index)
	(cond 
	 ((or (null? lst) (eq? (car lst) ele)) index)
	 (else 
	  (index-of-iter (cdr lst) ele (+ index 1))))))
  (index-of-iter lst ele 0)))
