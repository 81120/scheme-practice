;; in this file, the author implements
;; a function to flat a list.
;;
(define flatten 
 (lambda (lst)
  (define flatten-iter
   (lambda (res lst)
	(cond 
	 ((null? lst) res)
	 (else 
	  (cond 
	   ((not (list? (car lst)))
		(flatten-iter (append res (list (car lst))) (cdr lst)))
	   (else 
		(flatten-iter 
		 (append res (flatten-iter '() (car lst))) (cdr lst))))))))
  (flatten-iter '() lst)))
