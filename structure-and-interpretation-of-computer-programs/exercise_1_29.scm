(define (cube x) (* x x x))

(define (simpson-integral f a b n)
  (define (iter sum i x f h)
    (if (> i 0)
      (iter (+ sum (* 4 (f x)) (* 2 (f (+ x h)))) (- i 1) (+ x h h) f h)
      (+ sum (* 4 (f x)))
    )
  )

  (*
    (/ (/ (- b a) n) 3)             ;; this is h/3
    (+
      (f a)                         ;; this is first node
      (iter
        0                           ;; initial sum value
        (- (/ n 2) 1)               ;; number of iterations
        (+ a (/ (- b a) n))         ;; a + h = first node in summation
        f                           ;; function - of course 
        (/ (- b a) n)               ;; this is h
      )
      (f b)                         ;; this is last node
    )
  )
)


