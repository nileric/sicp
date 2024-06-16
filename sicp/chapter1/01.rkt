#lang sicp

(#%require rackunit)

(define a 3)

(define b (+ a 1))

(define p1 (+ a b (* a b)))

(check-equal? p1 19)

(check-equal? (= a b) #f)

(check-equal? (if (and (> b a) (< b (* a b))) a b) a)

(check-equal? (cond ((= a 4) 6)
                    ((= b 4) (+ 6 7 a))
                    (else 25)) 16)

(check-equal? (+ 2 (if (> b a) b a)) 6)

(check-equal? (* (cond ((> a b) a)
                       ((< a b) b)
                       (else -1))
                 (+ a 1)) 16)