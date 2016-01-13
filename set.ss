;; in this file, the author try to 
;; implements some functions about
;; set.

(define list->set
 (lambda (lst)
  (define list->set-iter
   (lambda (lst res)
	(cond 
	 ((null? lst) res)
	 (else 
	  (cond 
	   ((exists (lambda (e) (eq? e (car lst))) res)
		(list->set-iter (cdr lst) res))
	   (else 
		(list->set-iter (cdr lst) (append res (list (car lst))))))))))
  (list->set-iter lst '())))


(define set?
 (lambda (set)
  (cond 
   ((null? set) #t)
   (else
	(cond 
	 ((exists (lambda (e) (eq? e (car set))) (cdr set)) #f)
	 (else 
	  (set? (cdr set))))))))

(define set-append
 (lambda (set ele)
  (cond 
   ((exists (lambda (e) (eq? e ele)) set) set)
   (else 
	(append set (list ele))))))
