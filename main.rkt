#lang racket/base

(provide Y)

; Y-combinator
(define Y
   (lambda (f)
      ((lambda (x) (f (lambda () (x x)))) (lambda (x) (f (lambda () (x x)))))))