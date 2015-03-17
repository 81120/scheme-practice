;;generate a list consists of integers from start to end with step.
(define range
  (lambda (start step end)
    (cond 
      ((<= step 0) '())
      (else
        (cond 
          ((> start end) '())
          (else
            (cons start (range (+ start step) step end))))))))

;;implement range with tail recur.
(define xrange
  (lambda (start step end)
    (define iter-range
      (lambda (start step end result)
        (cond 
          ((<= step 0) '())
          (else
            (cond 
              ((> start end) result)
              (else
                (iter-range (+ start step) step end (append result (list start)))))))))
    (iter-range start step end '())))