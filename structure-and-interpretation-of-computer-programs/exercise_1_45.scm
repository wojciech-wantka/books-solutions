(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance)
  )
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next) 
        next
        (try next)
      )
    )
  )
  (try first-guess)
)

(define (average x y)
  (/ (+ x y) 2)
)

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

(define (average-damp f)
  (lambda (x) (average x (f x)))
)



(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y))) 1.0)
)
