(define (cbrt x)
    (define (cbrt-iter guess)
        (if (good-guess-check guess) guess (cbrt-iter (improve guess))))

    (define (improve guess)
        (/ (+ (/ x (* guess guess)) (* guess 2)) 3))

    (define (good-guess-check guess)
        (= guess (improve guess)))

    (cbrt-iter 1.0)
)
