#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; (test 0 (p))

;; Applicative order evaluation: infinite recursion or a stack overflow.
;; Normal order evaluation: result 0.

;; With applicative order evaluation, arguments to functions are evaluated before the function is applied.
;; With normal order evaluation, arguments to functions are not evaluated until their values are needed.

