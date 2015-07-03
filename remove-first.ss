;;;; in this file, the author implements a function 
;;;; to remove an element in a list from where this 
;;;; element appears firstly. And author implements 
;;;; this function in common recursive way an tail 
;;;; recursive way. 

;;;; common recursive way.
(define remove-first 
 (lambda (lst element)
  (cond 
   ((null? lst) '())
   (else 
	(cond 
	 ((eq? element (car lst)) (cdr lst))
	 (else 
	  (cons (car lst) (remove-first (cdr lst) element))))))))

;;;; tail recursive way.
(define remove-first 
 (lambda (lst element)
  (define remove-first-iter
   (lambda (result lst element)
	(cond 
	 ((null? lst) result)
	 (else 
	  (cond
	   ((eq? (car lst) element)
		(append result (cdr lst)))
	   (else
		(remove-first-iter (append result (list (car lst))) (cdr lst) element)))))))
  (remove-first-iter '() lst element)))
