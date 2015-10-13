;; in this file, the author implements
;; a function to get the element in a list 
;; with given index.
(define index-at
 (lambda (lst index)
  (cond 
   ((null? lst) '())
   (else 
	(cond
	 ((zero? index) (car lst))
	 (else 
	  (index-at (cdr lst) (- index 1))))))))
