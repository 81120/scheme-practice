;;simulate object person.
(define make-person
  (lambda (name age)
    (let 
      ;;use local environment simulate attribute in object.
      ((private-name name)
       (private-age age))
      ;;define a function to sublet the request of object.
      (lambda (op)
        (cond 
          ((eq? op 'get-name) private-name)
          ((eq? op 'get-age) private-age)
          ((eq? op 'set-name) 
           (lambda (new-name)
             (set! private-name new-name)))
          ((eq? op 'set-age)
           (lambda (new-age)
             (set! private-age new-age)))
          (else
            (display "nudefined method")))))))

;;simulate object student.
(define make-student
  (lambda (name age id)
    (let 
      ((private-name name)
       (private-age age)
       (private-id id))
      (begin
      (define getter 
        (lambda (attribute)
          (cond 
            ((eq? attribute 'name) private-name)
            ((eq? attribute 'age) private-age)
            ((eq? attribute 'id) private-id)
            (else
              (display "undefined attribute is used")))))
      (define setter!
        (lambda (attribute)
          (cond 
            ((eq? attribute 'name) 
             (lambda (new-name)
               (set! private-name new-name)))
            ((eq? attribute 'age)
             (lambda (new-age)
               (set! private-age new-age)))
            ((eq? attribute 'id)
             (lambda (new-id)
               (set! private-id new-id)))
            (else
              (display "undefined attribute is used")))))
      (define self
        (lambda ()
          "{object:student,
            attributes:{name:string,
                        age:integer,
                        id:string
                        },
            methods:{
                     getter:op->attribute,
                     setter:op->lambda,
                     self:null->string}}"))
      (lambda (op)
        (cond 
          ((eq? op 'getter) getter)
          ((eq? op 'setter) setter!)
          ((eq? op 'self) self)
          (else
            (display "undefined method is used"))))))))
(define getter
  (lambda (student)
    (student 'getter)))
(define setter!
  (lambda (student)
    (student 'setter)))
(define get-name
  (lambda (student)
    ((getter student) 'name)))
(define get-age
  (lambda (student)
    ((getter student) 'age)))
(define get-id
  (lambda (student)
    ((getter student) 'id)))
(define set-name!
  (lambda (student new-name)
    (((setter! student) 'name) new-name)))
(define set-age!
  (lambda (student new-age)
    (((setter! student) 'age) new-age)))
(define set-id!
  (lambda (student new-id)
    (((setter! student) 'id) new-id)))

;;problem list.
;;1.How to use macro to make this object definition regular?
;;2.How to implement herricant?
