(define (square x) (* x x))

(define (expmod base exp m)
  (cond 
    ((= exp 0) 1)
    ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
    (else (remainder (* base (expmod base (- exp 1) m)) m))
  )
)

(define (fermat-test n)
  (define (try-it a) (= (expmod a n n) a))

  (try-it (+ 1 (random (- n 1))))
)

(define (fast-prime? n times)
  (cond 
    ((= times 0) true)
    ((fermat-test n) (fast-prime? n (- times 1)))
    (else false)
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (report-prime prime elapsed-time)
  (display prime)
  (display " *** ")
  (display elapsed-time)
  (newline)
)

(define (start-prime-test n start-time)
  (if (fast-prime? n 10) (report-prime n (- (runtime) start-time)))
)

(define (timed-prime-test n)
  (start-prime-test n (runtime))
)
