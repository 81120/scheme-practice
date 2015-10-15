;; in this file, the author implements two 
;; functions to support the transfermation
;; about infinite stream.
;; stream-map is the stream version map 
;; stream-filter is the strea version filter 
;;
;; name: stream-map
;; type: stream->stream
;; args: (stream-map proc stream)
(define stream-map
 (lambda (proc stream)
  (cons 
   (proc (car stream))
   (delay 
	(stream-map proc (force (cdr stream)))))))   
;; name: stream-filter 
;; type: stream->stream 
;; args: (stream-filter pre? stream)
(define stream-filter
 (lambda (pre? stream)
  (cond 
   ((pre? (car stream))
	(cons
	 (car stream)
	 (delay 
	  (stream-filter pre? (force (cdr stream))))))
   (else 
	(stream-filter pre? (force (cdr stream)))))))
