(define (square x) (* x x))

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

