(define (f g) (g 2))

;; The invocation (f f) resolves simply to (f 2), and for 2 is not functional object
;; the "object 2 is not applicable" exception will occur.
