;;;; in this file, author implements a function 
;;;; to caculate the fib number. And author im- 
;;;; -plements this function in both common re- 
;;;; -cursive way and tail recursive way.

;;;; common recursive way. 

(define fib
 (lambda (n)
  (cond 
   ((< n 2) n)
   (else 
	(+ (fib (- n 1) (fib (- n 2))))))))

;;;; tail recursive way. 

(define fib
 (lambda (n)
  (define fib-iter
   (lambda (a b c count)
	(cond 
	 ((eq? c count) a)
	 (else 
	  (fib-iter b (+ a b) (+ c 1) count)))))
  (fib-iter 0 1 0 n)))
