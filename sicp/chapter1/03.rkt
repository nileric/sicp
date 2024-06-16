#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (max x y) (if (>= x y) x y))

(define (solution x1 x2 x3)
  (sum-of-squares
   (max x1 x2)
   (max x2 x3)))

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 3 1 2) 13)
(check-equal? (solution 3 2 1) 13)
(check-equal? (solution 3 3 2) 18)
(check-equal? (solution 2 2 2) 8)
