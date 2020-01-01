; .25 dollar, 4 types of coins.
; 1 change 4
; quarter, dime, nickel, penny
; a change n = (a change (n-1)) + ((a-d) change n), d = denomination of the first coin
; .25 change 4
; .25 change 3 + 0 change 4
; dime, nickel, penny
; .25 change 3 + 1 
; .25 change 2 + .15 change 3 + 1 
; (.25 change 1 + .20 change 1) + (.15 change 2 + .05 change 3) + 1
; ((.25 change 0 + .24 change 1) + (.20 change 0 + .19 change 1)) + ((.15 change 1 + .10 change 2) + (.05 change 2 + -.05 change 3)) + 1  
; (0 + .24 change 1 + 0 + .19 change 1 + .15 change 1 + .10 change 2 + .05 change 2 + 0 + 1
; (.24 change 0 + .23 change 1 ... -> 1 ) + (.19 change 0 --> 1) + (.15 change 1 --> 1) + 1 + .10 change 2 + .05 change 2
; 4 + .10 change 2 + .05 change 2 
; 4 + .10 change 1 + 0.05 change 2 + .05 change 1 + 0 change 2
; 4 + 1 + 0.05 change 2 + 1 + 1
; 7 + 0.05 change 2 
; 7 + 0.05 change 1 + 0 change 2
; 7 + 1 + 1 
; 9

(define (count-change amount)
    (cc amount 5))
;Amount in pennies
(define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
          ((= kinds-of-coins 1) 1) ; Optimization
          ((or (< amount 0) (= kinds-of-coins 0)) 0)
          (else (+ (cc amount (- kinds-of-coins 1)) 
          (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)          ;penny
          ((= kinds-of-coins 2) 5)          ;nickel
          ((= kinds-of-coins 3) 10)         ;dime
          ((= kinds-of-coins 4) 25)         ;quarter 
          ((= kinds-of-coins 5) 50)))       ;half dollar
