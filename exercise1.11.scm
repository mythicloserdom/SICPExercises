; A function is defined by
; f(n) = {n if n<3, f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3}
; n = 7
; f(7) = f(6) + 2f(5) + 3f(4)
; f(6) + 2f(5) + 3f(4) = (f(5) + 2f(4) + 3f(3)) + (

;Write a recursive procedure

(define (f n)
    (cond ((< n 3) n)
          (n >= 3 (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

;Write an iterative procedure

; f(-1) = -1
; f(0) = 0
; f(1) = 1
; f(2) = 2
; f(3) = f(2) + 2f(1) + 3f(0), n = 3
; f(4) = f(3) + 2f(2) + 3f(1), n = 4
; f(5) = f(4) + 2f(3) + 3f(2), n = 5
; f(6) = f(5) + 2f(4) + 3f(3), n = 6
; f(7) = f(6) + 2f(5) + 3f(4), n = 7
; Start by giving it known values and work forwards:
; f(0), f(1), f(2), n --> function
; a, b, c
; check if n = f(n), aka is n less than three?
; We want specific values so we can do a count down, it would look like this for the values:
; Pass in n = 2 with starting conditions f(0), f(1), f(2) and get 2 back
; check if (= n 0), if not then:
; Subtract one from the count. let's say f(0), f(1), f(2) are initialized in descending order.
;  If n was zero at  this point, we want to return f(0), so that's a, the first value we initialized.
; If not, let's shift all the values over one, f(1), f(2), ???
; Because it's in ascending order, the next value is f(3)
; f(3) = f(2) + 2f(1) + 3f(0) 
; We know all  these values, so it should work to say 
; f(3) = (+ c (* 2 b) (* 3 a))
; f(3) = 4 
; (1 2 4 1) is the data we have entered now, but count isn't zero yet so we iterate again.
; (2 4 f(4) 0)
; Because count is zero, return the first value in the data, a now, as 2.
; if n was 4 and not 2, we would continue as 
; (2 4 f(4) 2)
; f(4) = f(3) + 2f(2) + 3f(1)
; f(4) = (+ c (* 2 b) (* 3 a)) = 11
; (2 4 11 2)
; (4 11 (+ 11 (* 2 4) (* 3 2)) 1)
; (11 .. ... 0), return 11

(define (fun n)
    (define (fi a b c n)
            (if (= n 0)
            a
            (fi b c (+ c (* 2 b) (* 3 a)) (- n 1))))
    (fi 0 1 2 n)
)
