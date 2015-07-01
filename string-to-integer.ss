(define string->integer
 (lambda (str)
  (fold-left 
   (lambda (x y) 
	(+ (* x 10) y)) 0
   (map 
	(lambda (x) (- x 48))
	(map char->integer 
	 (string->list str))))))
