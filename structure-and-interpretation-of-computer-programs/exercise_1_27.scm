(define (expmod base exp m)
  (define (even? n) (= (remainder n 2) 0))
  
  (define (square x) (* x x))
  
  (cond 
    ((= exp 0) 1)
    ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
    (else (remainder (* base (expmod base (- exp 1) m)) m))
  )
)

(define (passes-fermat-test? n)
  (define (passes-fermat-test-iter? n a)
    (if (= n a) 
      #t
      (if (= (expmod a n n) a) (passes-fermat-test-iter? n (+ a 1)) #f)
    )
  )
  
  (passes-fermat-test-iter? n 2)
)
