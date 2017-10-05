(define (iterative-improve is-good-enough? improve)
  (define (find guess)
    (if (is-good-enough? guess)
      guess
      (find (improve guess))
    )
  )
  find
)

(define eps 0.000001)

(define (sqrt x)
  (define (is-good-enough? y) (< (abs (- (* y y) x)) eps))
  (define (improve y) (/ (+ y (/ x y)) 2))
  ((iterative-improve is-good-enough? improve) 1.0)
)

(define (fixed-point f first-guess)
  (define (is-good-enough? guess) (< (abs (- guess (f guess))) eps))
  (define (improve guess) (f guess))
  ((iterative-improve is-good-enough? improve) first-guess)
)
