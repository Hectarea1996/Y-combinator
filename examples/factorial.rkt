#lang racket/base

(require Y-combinator)

(provide fact)


(define (fact_step supply-k)
   (lambda (n)
      (if (zero? n)
         1
         (* n ((supply-k) (sub1 n))))))

(define fact (Y fact_step))