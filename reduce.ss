;;implement reduce.
(define reduce
  (lambda (f lst init)
    (cond 
      ((null? lst) init)
      (else
        (reduce  f (cdr lst) (f (car lst) init))))))