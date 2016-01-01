;; In this file, the author implements a function
;; pipe. It is just like the '|' in the Linux sh-
;; -ell.
;; 
;; For example:
;; (pipe x f g)
;; is equaverlent to 
;; (g (f x))
;;

(define pipe 
 (lambda (init-input . function-list)
  (define pipe-iter
   (lambda (init-input function-list)
	(cond 
	 ((null? function-list) init-input)
	 (else 
	  (pipe-iter ((car function-list) init-input) (cdr function-list))))))
  (pipe-iter init-input function-list)))
