(define (divides? a b) (= (remainder b a) 0))

(define (square x) (* x x))

(define (next input) (if (= input 2) 3 (+ input 2)))

(define (find-divisor n test-divisor)
  (cond
    ((> (square test-divisor) n) n)
    ((divides? test-divisor n) test-divisor)
    (else (find-divisor n (next test-divisor)))
  )
)

(define (smallest-divisor n) (find-divisor n 2))

(define (prime? n) (= n (smallest-divisor n)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (report-prime prime elapsed-time)
  (display prime)
  (display " *** ")
  (display elapsed-time)
  (newline)
)

(define (start-prime-test n start-time)
  (if (prime? n) (report-prime n (- (runtime) start-time)))
)

(define (timed-prime-test n)
  (start-prime-test n (runtime))
)
