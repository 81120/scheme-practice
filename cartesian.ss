;;get the cartesian product.
;;There are some problems.
(define cartesian
  (lambda (lst times)
    (cond 
      ((= 1 times) 
       (map (lambda (u) (list u)) lst))
      (else
        (let 
          ((temp (cartesian lst (- times 1))))
          (fold-left
            append
            (map 
              (lambda (v)
                (map
                  (lambda (w)
                    (cons v w))
                  temp))
              lst) '()))))))

;;list-times
(define list-times
  (lambda (lst1 lst2)
    (cond 
      ((= 1 (length lst2))
       (map 
         (lambda (u)
           (cons u lst2))
         lst1))
      (else
        (append 
          (map 
            (lambda (v)
              (cons (car lst2) (list v)))
            lst1)
          (list-times lst1 (cdr lst2)))))))