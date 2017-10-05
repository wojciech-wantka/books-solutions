(define (display-with-newline text)
  (display text)
  (newline)
)

; ########## EXERCISE 1.1

(define (exercise_1_1)
  (display-with-newline "Outputs are: 10, 12, 8, 3, 6, a, b, 19, #f, 4, 16, 6, 16")
)

; ########## EXERCISE 1.2

(define (exercise_1_2)
  (display-with-newline (/ (+ 5 4 (- 2 (- 3 (+  6 (/ 4 5))))) (* 3 (-6 2) (- 2 7))))
)

; ########## EXERCISE 1.3

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y))
)

(define (<= x y) (or (< x y) (= x y)))

(define (sum-of-squares-of-two-larger-numbers x y z)
  (cond
    ((and (<= x y) (<= x z)) (sum-of-squares y z))
    ((and (<= y x) (<= y z)) (sum-of-squares x z))
    ((and (<= z x) (<= z y)) (sum-of-squares x y))
  )
)

; ########## EXERCISE 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
)

; ########## EXERCISE 1.5

(define (exercise_1_5)
  (display-with-newline "If interpreter uses applicative -order evaluation the invocation (test 0 (p)) simply will return 0. On the other hand, normal-order causes fail due to infinite recursive invocations of procedure p, when trying to compute second operand of expression (test 0 (p)")
)

; ########## EXERCISE 1.6

(define (exercise_1_6)
  (display-with-newline "If interpreter uses normal-order evaluation then the new implementation causes infinite recursion calls and attempt to compute square root fails. Explanation: special form of if computes only one required expression, and eventually (when the guess is good enough) returns guess. Using new form of if, .......")

)

; ########## EXERCISE 1.7

(define (average x y)
  (/ (+ x y) 2)
)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001)
)

(define (improve guess x)
  (average guess (/ x guess))
)

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define (my-sqrt x)
  (sqrt-iter 1.0 x)
)

; ########## EXERCISE 1.8

(define (cube x) (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001)
)

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)
)

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (cbrt-iter (improve guess x) x)
  )
)

(define (cbrt x)
  (cbrt-iter 1.0 x)
)

; ########## EXERCISE 1.9

; (a)

; (+ 4 5)
; (inc (+ 3 5))
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9

; (b)

; (+ 4 5)
; (+ 3 6)
; (+ 2 7)
; (+ 1 8)
; (+ 0 9)
; 9

; ########## EXERCISE 1.10

(define (exercise_1_10)
  (define (ackermann x y)
    (cond
      ((= y 0) 0)
      ((= x 0) (* 2 y))
      ((= y 1) 2)
      (else (ackermann (- x 1) (ackermann x (- y 1))))
    )
  )

  (display-with-newline (string-append "ackermann(1, 10) = " (make-string (ackermann 1 10))))
  (display-with-newline (string-append "ackermann(2, 4) = " (make-string (ackermann 2 4))))
  (display-with-newline (string-append "ackermann(3, 3) = " (make-string (ackermann 3 3))))

  (display-with-newline "ackermann(0, n) = 2*n")
  (display-with-newline "ackermann(1, n) = 2^n")
  (display-with-newline "ackermann(2, n) = 2^(2^(2^(2^(...)))) <= number 2 appears n times")
)

; ##### A(1,10)

; A(1,10)=A(0,A(1,9))=2*A(1,9)=2*A(0,A(1,8))=2*2*A(1,8)=...=2^9*A(1,1)=2^10=1024

; ##### A(2,4)

; A(2,4)=A(1,A(2,3))=
;     A(2,3)=A(1,A(2,2))=
;         A(2,2)=A(1,A(2,1))=A(1,2)=A(0,A(1,1))=A(0,2)=2*2=4
;     =A(1,4)=A(0,A(1,3))=2*A(1,3)=2*A(0,A(1,2))=2^2*A(1,2)=2^2*A(0,A(1,1))==2^3*A(1,1)=2^3*2=2^4=16
; =A(1,16)=A(0,A(1,15))=2^16=65536
; A(1,15)=A(0,A(1,14))
; A(1,14)=A(0,A(1,13))
; A(1,13)=A(0,A(1,12))
; A(1,12)=A(0,A(1,11))
; A(1,11)=A(0,A(1,10))
; A(1,10)=A(0,A(1,9))
; A(1,9)=A(0,A(1,8))
; A(1,8)=A(0,A(1,7))
; A(1,7)=A(0,A(1,6))
; A(1,6)=A(0,A(1,5))
; A(1,5)=A(0,A(1,4))
; A(1,4)=A(0,A(1,3))
; A(1,3)=A(0,A(1,2))=A(0,4)=2*2*2
; A(1,2)=A(0,A(1,1))=A(0,2)=2*2
; A(1,1)=2

; different: A(2,4)=2^(2^(2^2))

; ##### A(3,3)

; A(3,3)=A(2,A(3,2))=
;     A(3,2)=A(2,A(3,1))=A(2,2)=
;         A(2,2)=A(1,A(2,1))=A(1,2)=
;             A(1,2)=A(0,A(1,1))=A(0,2)=2*2
;         =2*2
;     =2*2
; =A(2,4)=65536

; ########## EXERCISE 1.11

(define (exercise_1_11)
  (define (f-recursive n)
    (if (< n 3)
      n
      (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))
    )
  )

  (define (f-iterative n)
    (define (f-iter first second third n)
      (if (= n 0) 
        first
        (f-iter second third (+ (* 3 first) (* 2 second) third) (- n 1))  
      )
    )
    (f-iter 0 1 2 n)
  )
)

; ########## EXERCISE 1.12

(define (exercise_1_12)
  (define (binomial n k)
    (if (or (= n 0) (= k 0) (= k n))
      1
      (+ (binomial (- n 1) (- k 1)) (binomial (- n 1) k))
    )
  )
)

; ########## EXERCISE 1.13

(define (exercise_1_13)
  (display-with-newline "the solution is clean")
)

; ########## EXERCISE 1.14

; TODO

; ########## EXERCISE 1.15

; TODO

; ########## EXERCISE 1.16

(define (exercise_1_16)
  (define (power base exponent)
    (define (power-iter base exponent helper)
      (cond
        ((= exponent 0) helper)
        ((even? exponent) (power-iter (square base) (/ exponent 2) helper))
        (else (power-iter base (- exponent 1) (* base helper)))
      )
    )
    (power-iter base exponent 1)
  )
)

; ########## EXERCISE 1.17

(define (double number) (+ number number))

(define (halve number) (/ number 2))

(define (fast-multiply a b)
  (cond
    ((= b 0) 0)
    ((even? b) (* (double a) (halve b)))
    (else (+ a (* a (- b 1))))
  )
)

; ########## EXERCISE 1.18

(define (iter-multiply a b)
  (define (multiply a b accumulator)
    (cond 
      ((= b 0) accumulator)
      ((even? b) (multiply (double a) (halve b) accumulator))
      (else (multiply a (- b 1) (+ a accumulator)))
    )
  )

  (multiply a b 0)
)

; ########## EXERCISE 1.19

(define (fib n)
  (define (transform_p p q) (+ (* p p) (* q q)))
  (define (transform_q p q) (+ (* 2 p q) (* q q)))
  (define (fib-iter a b p q count)
    (cond
      ((= count 0) b)
      ((even? count) (fib-iter a b (transform_p p q) (transform_q p q) (/ count 2)))
      (else (fib-iter (+ (* b q) (* a q) (* a p)) (+ (* b p) (* a q)) p q (- count 1)))
    )
  )
  (fib-iter 1 0 0 1 n)
)

; ########## EXERCISE 1.20


; applicative order evaluation:

; (gcd 206 40)
; (gcd 40 (remainder 206 40))
; (gcd 40 6)
; (gcd 6 (remainder 40 6))
; (gcd 6 4)
; (gcd 4 (remainder 6 4))
; (gcd 4 2)
; (gcd 2 (remainder 4 2))
; (gcd 2 0)
; 2
; => 4 remainder operations

; normal order evaluation:

; (gcd 206 40)
; (gcd 40 (remainder 206 40))
; (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
; (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
; (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
; => 11 remainder operations

; ########## EXERCISE 1.21

(define (divides? a b) (= (remainder b a) 0))

(define (find-divisor n test-divisor)
  (cond
    ((> (square test-divisor) n) n)
    ((divides? test-divisor n) test-divisor)
    (else (find-divisor n (+ test-divisor 1)))
  )
)

(define (smallest-divisor n) (find-divisor n 2))

(define (exercise_1_21)
  (display "(smallest-divisor 199) = ")
  (display-with-newline (smallest-divisor 199))
  (display "(smallest-divisor 1999) = ")
  (display-with-newline (smallest-divisor 1999))
  (display "(smallest-divisor 19999) = ")
  (display-with-newline (smallest-divisor 19999))
)

; ########## EXERCISE 1.22

(define (prime? n) (= n (smallest-divisor n)))

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

(define (search-for-primes first last)
  (define (search-for-primes-iter actual last)
    (timed-prime-test actual)
    (if (< actual last) (search-for-primes-iter (+ actual 2) last))
  )
  (search-for-primes-iter first last)
)

(define (exercise_1_22)
  (display-with-newline "(a) larger than 1000")
  (search-for-primes 1001 1019)
  (display-with-newline "(b) larger than 10000")
  (search-for-primes 10001 10037)
  (display-with-newline "(c) larger than 100000")
  (search-for-primes 100001 100043)
  (display-with-newline "(d) larger than 1000000")
  (search-for-primes 1000001 1000037)
)
