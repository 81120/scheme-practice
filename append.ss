;;append list-a after list-b.
(define list-append
  (lambda (list-a list-b)
    (cond 
      ((null? list-a) list-b)
      (else
        (cons (car list-a) (list-append (cdr list-a) list-b))))))

;;implement list-reverse with tail recur.
;;I can not deal with this problem now.