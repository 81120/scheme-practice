;; In this file, the author implements a 
;; infinite stream of integer. And then, the 
;; author implements a function next to 
;; get the value from this stream one by one.
(define make-integer-stream
 (lambda ()
  (define integer-starting-from
   (lambda (n)
	(cons n (delay (integer-starting-from (+ n 1))))))
  (let
   ((stream (integer-starting-from 1)))
   (lambda (op)
	(cond 
	 ((eq? op 'next)
	  (let 
	   ((result (car stream)))
	   (set! stream (force (cdr stream)))
	   result)))))))
(define next
 (lambda (stream) 
  (stream 'next)))

;; testing code
(define integer-stream (make-integer-stream))
(next integer-stream)
(next integer-stream)
