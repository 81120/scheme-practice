;; in this file, the author implements 
;; a function to test if a list equals 
;; to another list.

(define list-eq?
 (lambda (lst1 lst2)
  (cond 
   ((not 
	 (and 
	  (list? lst1)
	  (list? lst2)))
	(display "list->list->boolean"))
   (else 
	(cond 
	 ((and 
	   (null? lst1)
	   (null? lst2))
#t)
	 (else 
	  (cond 
	   ((or 
		 (null? lst1)
		 (null? lst2))
#f)
	   (else 
		(cond 
		 ((eq? 
		   (car lst1)
		   (car lst2))
		  (list-eq? 
		   (cdr lst1)
		   (cdr lst2)))
		 (else #f))))))))))

;; based on the list-eq?, we can also 
;; implement the string-eq? easily.

(define string-eq? 
 (lambda (str1 str2)
  (cond 
   ((not 
	 (and
	  (string? str1)
	  (string? str2)))
	(display "string->string->boolean"))
   (else 
	(list-eq? 
	 (string->list str1)
	 (string->list str2))))))
