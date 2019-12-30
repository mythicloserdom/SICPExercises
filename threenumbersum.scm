(define (three-num-greater-sum x y z)
        (cond
            ((and (>= x z) (>= y z)) (+ (* x x) (* y y)))
            ((and (>= y x) (>= z x)) (+ (* y y) (* z z)))
            ((and (>= z x) (>= y x)) (+ (* z z) (* y y)))
        )
)
