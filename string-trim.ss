;; in this file, the author implements
;; the trim of string 

 (define trim-left
    (lambda (char-list)
      (cond
        ((not
           (list? char-list))
         (display "char[]->char[]"))
        (else
          (cond
            ((null? char-list) char-list)
            (else
              (cond
                ((not
                   (eq? #\space 
                        (car char-list)))
                 char-list)
                (else
                  (trim-left 
                    (cdr char-list))))))))))

 
  (define trim
    (lambda (char-list)
      (cond
        ((not
           (list? char-list))
         (display "char[]->char[]"))
        (else
          (cond 
            ((null? char-list) char-list)
            (else
              (reverse
                (trim-left
                  (reverse 
                    (trim-left char-list))))))))))

  
   (define string-trim 
    (lambda (str)
      (cond 
        ((not
           (string? str))
         (display "string->string"))
        (else
          (cond
            ((zero? 
               (string-length str))
             str)
            (else
              (list->string
                (trim
                  (string->list str)))))))))