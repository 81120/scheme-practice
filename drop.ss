;; in this file, the author 
;; implements a function to
;; drop the first n elements
;; from a list.

(define drop 
 (lambda (n lst)
  (cond 
   ((zero? n) lst)
   ((null? lst) lst)
   ((< n 0) '())
   (else 
	(drop (- n 1) (cdr lst))))))
