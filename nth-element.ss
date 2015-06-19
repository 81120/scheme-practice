(define nth-element
  (lambda (lst n)
    (cond 
      ((null? lst) (display 'null))
      (else
        (cond 
          ((zero? n) (car lst))
          (else
            (nth-element (cdr lst) (- n 1))))))))