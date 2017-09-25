;; minimal edit distance problem

(define min-edit-distance
 (lambda (lst-x lst-y)
  (cond 
   ((null? lst-x) (length lst-y))
   ((null? lst-y) (length lst-x))
   ((eq? (car lst-x) (car lst-y)) 
    (min-edit-distance (cdr lst-x) (cdr lst-y)))
   (else
    (+ 1
     (min
      (min-edit-distance (cdr lst-x) (cdr lst-y))
      (min-edit-distance lst-x (cdr lst-y))
      (min-edit-distance (cdr lst-x) lst-y)))))))
