;; in this file, the author implements
;; a function to test if an integer is 
;; a prime number.

(define all?
 (lambda (lst)
  (cond 
   ((null? lst) #t)
   (else 
	(cond 
	 ((car lst) (all? (cdr lst)))
	 (else #f))))))

(define range
 (lambda (start end)
  (define range-iter
   (lambda (res start end)
	(cond 
	 ((> start end) res)
	 (else 
	  (range-iter (append res (list start)) (+ start 1) end)))))
  (range-iter '() start end)))

(define prime?
 (lambda (n)
  (all? 
   (map
	(lambda (m) (not (zero? (remainder n m))))
	(range 2 (- n 1))))))
