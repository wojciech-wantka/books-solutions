(define (even? n) (= (remainder n 2) 0))

(define (square x) (* x x))

;; In the case of Miller-Rabin test value base may be in range 1 < base < n,
;;  so any reported square root (modulo m) of 1 will be automatically nontrivial.

(define (expmod base exp m)
  (cond 
    ((= exp 0) 1)
    ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
    (else (remainder (* base (expmod base (- exp 1) m)) m))
  )
)
  
;; For given number n to test its primality check all numbers 
;;  1 < a < n using Miller-Rabin test. Note that if number a
;;  is square root of 1 (modulo n) then the expression
;;  (= (expmod a (- n 1) n) 1) is not fulfilled, because 
;;  expmod function signals by returning 0

(define (passes-miller-rabin-test? n)
  (define (passes-miller-rabin-test-iter? n a)
    (if (= n a) ;; Make sure that test cases ends at a = n - 1. If we reached a = n, then number n is prime
      #t
      (if (= (expmod a (- n 1) n) 1) (passes-miller-rabin-test-iter? n (+ a 1)) #f)
    )
  )
  
  (passes-miller-rabin-test-iter? n 2) ;; Make sure that test cases starts at a = 2 (e.g. a > 1), so any reported square root of 1 will be automatically nontrivial.
)
