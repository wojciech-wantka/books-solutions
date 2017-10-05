(define (compose f g)
  (lambda (x) (f (g x)))
)

(define (repeated f n)
  (define (repeated-iter accumulated i)
    (if (> i 1) 
      (repeated-iter (compose f accumulated) (- i 1))
      accumulated
    )
  )
  (repeated-iter f n)
)

(define (smooth f dx)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3))
)

(define (n-fold-smooth f dx n)
  (repeated (smooth f dx) n)
)

