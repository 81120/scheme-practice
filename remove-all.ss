;;;; in this file, the author implements a function
;;;; remove-all to which remove all occurrences of 
;;;; a given symbol from a list of symbol. 
;;;
;;;; in common recursive way.
(define remove-all 
 (lambda (lst element)
  (cond 
   ((null? lst) '())
   (else 
	(cond 
	 ((eq? (car lst) element)
	  (remove-all (cdr lst) element))
	 (else 
	  (cons (car lst) (remove-all (cdr lst) element))))))))

;;;; in tail recursive way. 
(define remove-all
 (lambda (lst element)
  (define remove-all-iter 
   (lambda (result lst element)
	(cond 
	 ((null? lst) result)
	 (else 
	  (cond 
	   ((eq? (car lst) element)
		(remove-all-iter result (cdr lst) element))
	   (else 
		(remove-all-iter (append result (list (car lst))) (cdr lst) element)))))))
  (remove-all-iter '() lst element)))
