(define (root x)
    (define (sqrt-iter guess)
        (if (good-enough guess) guess (sqrt-iter (improve guess))))
    
    (define (improve guess)
        (/ (+ (/ x guess) guess) 2))

    (define (good-enough guess)
        (= guess (improve guess)))

    (sqrt-iter 1.0)
)
