;;test if an item is in a list.
(define in-list? 
  (lambda (item lst)
    (cond 
      ((null? lst) #f)
      (else
        (or (eq? item (car lst)) (in-list? item (cdr lst)))))))

;;implement in-list? with tail recur.
(define in-list-tail?
  (lambda (item lst)
    (cond 
      ((null? lst) #f)
      (else
        (cond 
          ((eq? item (car lst)) #t)
          (else
            (in-list-tail? item (cdr lst))))))))