;; in this file, wht author implements
;; a function to test if a list starts
;; with another list.
(define start-with?
 (lambda (lst sub-lst)
  (cond
   ((or 
	 (not (list? lst))
	 (not (list? sub-lst)))
	(display "list->list->boolean"))
   ((and 
	 (null? lst) (null? sub-lst)) #t)
   (else 
	(cond 
	 ((null? lst) #f)
	 ((null? sub-lst) #t)
	 (else 
	  (cond 
	   ((eq? (car lst) (car sub-lst))
		(start-with? (cdr lst) (cdr sub-lst)))
	   (else #f))))))))

;; based on that, the author implements 
;; another function to test is a string 
;; starts with another string 
(define string-start-with?
 (lambda (str sub-str)
  (cond 
   ((or 
	 (not (string? str))
	 (not (string? sub-str)))
	(display "string->string->boolean"))
   (else 
	(start-with? 
	 (string->list str)
	 (string->list sub-str))))))
