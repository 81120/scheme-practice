;; in this file, the author implments 
;; a predicte any? to test if there 
;; is any element satisfied the pre 
;; in a list.

(define any? 
 (lambda (lst pre)
  (cond 
   ((null? lst) #f)
   (else 
	(cond 
	 ((pre (car lst)) #t)
	 (else 
	  (any? (cdr lst) pre)))))))
