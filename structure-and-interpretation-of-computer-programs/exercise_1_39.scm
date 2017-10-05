(define (cont-frac-iterative n d k)
  (define (iter result i)
    (if (= i 0)
      result
      (iter (/ (n i) (+ result (d i))) (- i 1))
    )
  )

  (iter 0 k)
)

(define (tan-cf x k)
  (define (n i) 
    (if (= i 1)
      x
      (- (* x x))
    )
  )

  (define (d i) (- (* 2.0 i) 1.0))

  (cont-frac-iterative n d k)
)


