;;
;; in this file, the author implements 
;; a function take to get the first n
;; elements from a list.
;;
(define take 
 (lambda (n lst)
  (define take-iter
   (lambda (res n lst)
	(cond 
	 ((zero? n) res)
	 ((null? lst) res)
	 (else 
	  (take-iter (append res (list (car lst))) (- n 1) (cdr lst))))))
  (take-iter '() n lst)))
