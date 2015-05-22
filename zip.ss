(define zip
  (lambda (lst1 lst2)
    (cond 
      ((not (eq? (length lst1) (length lst2))) '())
      ((or (null? lst1) (null? lst2)) '())
      (else
        (cons (list (car lst1) (car lst2))
              (zip (cdr lst1) (cdr lst2)))))))

;;;;;;;;;;; implement the zip with tail recursion
(define zip-iter
  (lambda (lst1 lst2 result)
    (cond 
      ((not (eq? (length lst1) (length lst2))) (reverse result))
      ((or (null? lst1) (null? lst2)) (reverse result))
      (else
        (zip-iter (cdr lst1) (cdr lst2) (cons (list (car lst1) (car lst2)) result))))))