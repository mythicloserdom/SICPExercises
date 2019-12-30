; Linear Recursive 
(define (factorial x)
    (if (= x 1)
        1
        (* x (factorial (- x 1))))
)


; Iterations
(define (i-fact x)
    (factorial-iterator 1 1 x))

(define (factorial-iterator product counter max-count)
    (if (> counter max-count)
        product
        (factorial-iterator (* counter product)
                            (+ counter 1)
                            max-count))
)


(define (! x)
    (define (iter product counter)
        (if (= counter x)
            product
            (iter (* (+ counter 1) product) (+ counter 1))))

    (iter 1 0)
)        
