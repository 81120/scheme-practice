;; in this file, the author implements
;; a function to judge if the given string 
;; is a circle string.
;;
;; author: Leo (nicolas.leo.hu@gmail.com)

(define circle-string?
 (lambda (str)
  (cond 
   ((< (string-length str) 2) #t)
   (else 
	(cond 
	 ((not 
	   (eq? 
		(car 
		 (string->list str))
		(car 
		 (reverse 
		  (string->list str)))))
#f)
	 (else 
	  (circle-string? 
	   (list->string 
		(reverse 
		 (cdr 
		  (reverse 
		   (cdr 
			(string->list str)))))))))))))
