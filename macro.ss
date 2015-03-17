;;define a simple macro.
(define-syntax my-if
               (syntax-rules ()
                 ((my-if pre? expr-a expr-b)
                  (cond 
                    (pre? expr-a)
                    (else expr-b)))))

;;define-syntax my-or
(define-syntax my-or
               (syntax-rules ()
                 ((my-or) #f)
                 ((my-or e) e)
                 ((my-or e1 e2 ...)
                  (if e1 
                      e1
                      (my-or e2 ...)))))

;;define-syntax def
(define-syntax def
               (syntax-rules ()
                 ((def var expr)
                  (define var expr))
                 ((def (proc args ...) body ...)
                  (define proc
                    (lambda (args ...)
                      (body ...))))))

;;define-syntax defun
(define-syntax defun 
               (syntax-rules ()
                 ((defun function-name (args ...) (body ...))
                  (define function-name
                    (lambda (args ...) 
                      (body ...))))))