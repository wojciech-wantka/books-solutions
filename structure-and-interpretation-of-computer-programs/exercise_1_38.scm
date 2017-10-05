(define (cont-frac-iterative n d k)
  (define (iter result i)
    (if (= i 0)
      result
      (iter (/ (n i) (+ result (d i))) (- i 1))
    )
  )

  (iter 0 k)
)

(define (n i) 1.0)

(define (d i)
  (cond
    ((= i 2) 2.0)
    ((= (remainder i 3) 2) (+ (* 2.0 (/ i 3)) 2.0))
    (else 1.0)
  )
)

(define e
  (+
    2
    (cont-frac-iterative
      n
      d
      50
    )
  )
)

(newline)
(display e)
