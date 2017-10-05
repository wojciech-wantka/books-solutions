(define (identity x) x)
(define (increment x) (+ x 1))

(define (square x) (* x x))
(define (add2 x) (+ x 2))

(define (product-recursive term a next b)
  (if (> a b)
    1
    (* 
      (term a)
      (product-recursive term (next a) next b)
    )
  )
)

(define (product-iterative term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))
    )
  )
  (iter a 1)
)

(define (pi-approx-bad n)
  ;; Returns a^2 * (a + 2)^2 * (a + 4)^2 * ... * b^2
  (define (product-of-squares-by-two a b) (product-iterative square a add2 b))
  
  (/
    (* 8.0 (product-of-squares-by-two 4 (+ 2 (* 2 n))) (+ 4 (* 2 n))) ;; numerator
    (product-of-squares-by-two 3 (+ 3 (* 2 n)))                       ;; denominator
  )
)

(define (factorial n)
  (product-iterative identity 1 increment n)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (pi-approx n)
  (define (up term) (/ term (- term 1)))
  (define (down term) (/ term (+ term 1)))
  
  (*
    4
    (product-iterative down 2.0 add2 (* 2 n))
    (product-iterative up 4.0 add2 (+ 2 (* 2 n)))
  )
)
