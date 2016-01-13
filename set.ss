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

(define set-union
 (lambda (set1 set2)
  (cond 
   ((null? set2) set1)
   (else 
	(set-union (set-append set1 (car set2)) (cdr set2))))))

(define in-set?
 (lambda (ele set)
  (exists (lambda (e) (eq? e ele)) set)))

(define set-interact
 (lambda (set1 set2)
  (define set-interact-iter
   (lambda (set1 set2 res)
	(cond 
	 ((null? set1) res)
	 (else 
	  (cond 
	   ((in-set? (car set1) set2) (set-interact-iter (cdr set1) set2 (append res (list (car set1)))))
	   (else (set-interact-iter (cdr set1) set2 res)))))))
  (set-interact-iter set1 set2 '())))
