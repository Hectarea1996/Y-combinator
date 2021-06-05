#lang racket/base

(provide Y)

; Y-combinator
(define Y
   (lambda (f)
      ((lambda (x) (f (lambda () (x x)))) (lambda (x) (f (lambda () (x x)))))))



; Ejemplo
(define (fact_step supply-k)
   (lambda (n)
      (if (zero? n)
         1
         (* n ((supply-k) (sub1 n))))))

(define fact (Y fact_step))