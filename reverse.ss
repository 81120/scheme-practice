;;reverse a list.
(define reverse-list
  (lambda (lst) 
    (cond 
      ((null? lst) lst)
      (else
        (append (reverse-list (cdr lst)) (list (car lst)))))))

;;implement reverse-list with tail recur.
(define reverse-list-tail
  (lambda (lst)
    (define iter-reverse
      (lambda (lst result)
        (cond 
          ((null? lst) result)
          (else 
            (iter-reverse (cdr lst) (cons (car lst) result))))))
    (iter-reverse lst '())))
