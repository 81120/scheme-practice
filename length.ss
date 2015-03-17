;;get length of list.
(define list-length
  (lambda (lst)
    (cond 
      ((null? lst) 0)
      (else
        (+ 1 (list-length (cdr lst)))))))

;;implement list-length with tail recur.
(define list-length-tail
  (lambda (lst)
    (define iter-length
      (lambda (lst result)
        (cond 
          ((null? lst) result)
          (else
            (iter-length (cdr lst) (+ result 1))))))
    (iter-length lst 0)))