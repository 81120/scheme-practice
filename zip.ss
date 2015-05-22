(define zip
  (lambda (lst1 lst2)
    (cond 
      ((not (eq? (length lst1) (length lst2))) '())
      ((or (null? lst1) (null? lst2)) '())
      (else
        (cons (list (car lst1) (car lst2))
              (zip (cdr lst1) (cdr lst2)))))))