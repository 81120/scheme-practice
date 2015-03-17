;;implement quick sort algorithm.
(define qsort
  (lambda (lst)
    (cond 
      ((null? lst) '())
      (else
        (append (qsort (filter (lambda (u) (< u (car lst))) (cdr lst)))
                (cons (car lst) (qsort (filter (lambda (u) (>= u (car lst))) (cdr lst)))))))))

;;implement quick with tail recur.
;;I can not deal with this problem now.