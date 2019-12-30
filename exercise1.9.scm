(define (+ a b)
    (if (= a 0) b (inc  (+ (dec a) b))))

; (+ 5 5)
; inc  adds one
; dec decreases by one
; ( a =/= 0) -> #f, (inc  (+ (dec a) b))
; (inc (+ 4 5))
; (inc (inc (+ 3 5)))
; (inc (inc (inc (+ 2 5))))
; (inc (inc (inc (inc (+ 1 5)))))
; (inc (inc (inc (inc (inc (+ 0 5))))))
; a = 0, return b. 
; (inc (inc (inc (inc (inc 5)))))
; (inc (inc (inc (inc 6)
; (inc (inc (inc 7)))
; (inc (inc 8))
; (inc 9)
; (10)
; This is a recursive procedure, there is more to the state than a and b.

(define (+ a b)
    (if (= a 0) b (+ (dec a) (inc b)))

; (+ 5 5)
; 5=/= 0
; (+ 4 6)
; (+ 3 7)
; (+ 2 8)
; (+ 1 9)
; (+ 0 10)
; 0 = 0 ->
; 10
; This is an iterative process since the state is all stored in the variables.
; there are no increments waiting to be done before it's evaluated.

