#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define (good-enough? guess next-guess)
    (< (abs (- guess next-guess))
       (* 0.0000000001 guess)))
  
  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess)
    (if (good-enough? guess (improve guess))
        guess
        (sqrt-iter (improve guess))))

  (sqrt-iter 1.0))

(check-equal? (sqrt 9) 3.0)