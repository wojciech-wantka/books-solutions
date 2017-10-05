(define (cont-frac-iterative n d k)
  (define (iter result i)
    (if (= i 0)
      result
      (iter (/ (n i) (+ result (d i))) (- i 1))
    )
  )
  
  (iter 0 k)
)

(define (cont-frac-recursive n d k)
  (define (recur i)
    (if (= i (+ k 1))
      0
      (/ (n i) (+ (d i) (recur (+ i 1))))
    )
  )
  
  (recur 1)
)

(define golden-ratio 
  (cont-frac-iterative 
    (lambda (i) 1.0) 
    (lambda (i) 1.0)
    11
  )
)

;; 1 / phi = 2 / (1 + sqrt(5)) = 0.618033988749894848204586834365638117720309179805762862135448...
;; 11 terms to 4 digits precision

(newline)
(display golden-ratio)
