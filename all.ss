;;;; in this file, author implements a 
;;;; predicte to test if all the elements
;;;; in a list satisfied the pre.
;;;; and author implements this predicte
;;;; in both common recursive way and 
;;;; tail recursive way.

;;;; common recursive way.
(define all? 
 (lambda (lst pre)
  (cond 
   ((null? lst) #t)
   (else 
	(and (pre (car lst)) (all? (cdr lst) pre))))))

;;;; tail recursive way.
(define all? 
 (lambda (lst pre)
  (define all-iter? 
   (lambda (result lst pre)
	(cond 
	 ((null? lst) result)
	 (else 
	  (all-iter? (and result (pre (car lst))) (cdr lst) pre)))))
  (all-iter? #t lst pre)))
