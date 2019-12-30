(define (sqrt-iter guess x)
    (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ guess (/ x guess)) 2))

(define (newton-root x)
    (sqrt-iter 1.0 x))



;;; Good enough testing

(define (good-enough? guess x)                     
    (< (abs (- (* guess guess) x)) 0.001))

;;; If x is small, the proption of error increases while our guess' checking does not.

;;; New-if iter tester, infinite recursion calling

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(define (new-if-sqrt-iter guess x)
    (new-if (good-enough? guess x) guess (new-if-sqrt-iter (improve guess x) x)))

