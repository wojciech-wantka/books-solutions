(define (filtered-accumulate combiner filter null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner result (if (filter a) (term a) null-value)))
    )
  )
  (iter a null-value)
)

;; *******************

(define (increment x) (+ x 1))

(define (square x) (* x x))
(define (addition x y) (+ x y))

(define (identity x) x)
(define (multiplication x y) (* x y))

;; (a) **********************************

(define (divides? a b) (= (remainder b a) 0))

(define (find-divisor n test-divisor)
  (cond
    ((> (square test-divisor) n) n)
    ((divides? test-divisor n) test-divisor)
    (else (find-divisor n (+ test-divisor 1)))
  )
)

(define (smallest-divisor n) (find-divisor n 2))

(define (prime? n)
  (= n (smallest-divisor n))
)

;; *******************

(define (sum-prime-squares a b)
  (filtered-accumulate addition prime? 0 square a increment b)
)

;; (b) **********************************

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))
  )
)

;; *******************

(define (relative-primes-product n)
  (define (relatively-prime? i) (= (gcd n i) 1))

  (filtered-accumulate multiplication relatively-prime? 1 identity increment (- n 1))
)

















