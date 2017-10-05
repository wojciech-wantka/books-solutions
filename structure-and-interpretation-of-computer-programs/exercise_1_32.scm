(define (accumulate-recursive combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner 
      (term a)
      (accumulate-recursive combiner null-value term (next a) next b)
    )
  )
)

(define (accumulate-iterative combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner result (term a)))
    )
  )
  (iter a null-value)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (sum term a next b)
  (define (addition x y) (+ x y))
  
  (accumulate-iterative addition 0 term a next b)
)

(define (product term a next b)
  (define (multiplication x y) (* x y))
  
  (accumulate-iterative multiplication 1 term a next b)
)
