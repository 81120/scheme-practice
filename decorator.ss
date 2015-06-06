;;;; implement the decorator like the @ in Python
(define-syntax decorator
   (syntax-rules ()
     ((decorator dec func (lambda (args ...) (body ...)))
      (begin 
        (define f 
          (lambda (args ...) (body ...)))
        (define func 
          (lambda (args ...)
            (dec f args ...)))))))

;;;; testing code

(define dec 
  (lambda (f x)
    (begin 
      (display "before calling\n")
      (f x))))

(decorator dec test
  (lambda (x)
    (+ x 2)))