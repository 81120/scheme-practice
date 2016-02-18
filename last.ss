;;
;; in this file, the author implements 
;; a function to get the last element
;; of list.
;;

(define last
 (lambda (lst)
  (cond 
   ((null? lst) '())
   (else 
	(car (reverse lst))))))
