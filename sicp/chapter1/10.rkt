#lang sicp

(#%require rackunit)
(#%require racket/trace)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(trace A)
(A 1 10)
(newline)
(A 2 4)
(newline)
(A 3 3)

(define (f n) (A 0 n))
;;(define (A x n)
;;  (cond ((= n 0) 0)
;;        ((= 0 0) (* 2 n)) ; always true
;;        ((= n 1) 2)       ; never executed
;;        (else (A (- 0 1)  ; never executed
;;                 (A 0 (- n 1))))))

;;(define (A 0 n)
;;  (* 2 n)))

;; f(n) = 2n


(define (g n) (A 1 n))
;;(define (A 1 n)
;;  (cond ((= n 0) 0)
;;        ((= 1 0) (* 2 n)) ; always false
;;        ((= n 1) 2)
;;        (else (A (- 1 1)
;;                 (A 1 (- n 1))))))

;;(define (A 1 n)
;;  (cond ((= n 0) 0)
;;        ((= n 1) 2)
;;        (else (* 2 (A 1 (- n 1))))))

;; f(g) = 2^n

(define (h n) (A 2 n))
;;(define (A 2 n)
;;  (cond ((= n 0) 0)
;;        ((= 2 0) (* 2 n)) ; always false
;;        ((= n 1) 2)
;;        (else (A (- 2 1)
;;                 (A 2 (- n 1))))))

;;(define (A 2 n)
;;  (cond ((= n 0) 0)
;;        ((= n 1) 2)
;;        (else (A (- 2 1)
;;                 (A 2 (- n 1))))))
