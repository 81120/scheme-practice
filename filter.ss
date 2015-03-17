;;implement filter.
(define list-filter
  (lambda (predicate? lst)
    (define iter-filter
      (lambda (predicate? lst result)
        (cond 
          ((null? lst) result)
          (else
            (cond 
              ((predicate? (car lst)) (iter-filter predicate? (cdr lst) (append result (list (car lst)))))
              (else
                (iter-filter predicate? (cdr lst) result)))))))
    (iter-filter predicate? lst '())))
