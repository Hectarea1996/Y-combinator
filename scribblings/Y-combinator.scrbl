#lang scribble/manual

@(require (for-label racket/base
                     Y-combinator))


@title{Y-combinator}

@author[(author+email "Héctor Galbis Sanchis" "hectometrocuadrado@gmail.com")]

@defmodule[Y-combinator]

Ejemplo de implementación en Racket del combinador de punto fijo Y.

@defproc[(Y [proc procedure?])
         procedure?]{
    
   Tiene el mismo comportamiento que el combinador de punto fijo descubierto por Haskell Curry.

   @#reader scribble/comment-reader
   (racketblock
      (define (fact-step supply-k)
         (lambda (n)
            (if (zero? n)
               1
               (* n ((supply-k) (sub1 n))))))
            
      (define fact (Y fact-step))

      (fact 5) ;; -> 120
   )

}