(define (double procedure)
  (lambda (x) (procedure (procedure x)))
)

;; (((double (double double)) inc) 5) = ?
