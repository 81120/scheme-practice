;; In this file, the author tries 
;; to implement a repl of Scheme.

(define repl
 (lambda (evaluator)
  (display "repl>")
  (let ((expr (read)))
   (cond 
	((eq? expr 'exit)
	 (display "exiting repl")
	 (newline))
	(else 
	 (write (evaluator expr))
	 (newline)
	 (repl evaluator))))))


(define read-token 
 (lambda ()
  (let ((first-char (read-char)))
   (cond 
	((char-whitespace? first-char)
	 (read-token))
	((eq? first-char #\)) right-paren-token)
	((eq? first-char #\() left-paren-token)
	((char-alphabetic? first-char)
	 (read-identifier first-char))
	((char-numeric? first-char)
	 (read-number first-char))
	(else 
	 (display "illegal lexical syntax"))))))
