;; in this file, the author implements a 
;; function to split the list.
(define list-split
    (lambda (lst item)
      (define list-split-iter
        (lambda (lst item temp result)
          (cond
            ((null? lst) 
             (append result (list temp)))
            (else
              (cond
                ((eq? item (car lst))
                 (list-split-iter
                   (cdr lst) item '() (append result (list temp))))
                (else
                  (list-split-iter
                    (cdr lst) item (append temp (list (car lst))) result)))))))
      (list-split-iter lst item '() '())))

;; bases on that, implement the string split 
(define string-split
  (lambda (str ch)
    (map list->string
         (list-split (string->list str) ch))))