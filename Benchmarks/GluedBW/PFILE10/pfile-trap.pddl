(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init 
(clear b1)
(clear b3)
(clear b6)
(clear b8)
(handempty )
(on b1 b4)
(on b3 b5)
(on b8 b9)
(ontable b10)
(ontable b2)
(ontable b4)
(ontable b6)
(stai_on b5 b7)
(stai_on b7 b10)
(stai_on b9 b2)
)
(:goal (and 
;goal G7
(on b3 b4)
;goal G1
(on b9 b10)
;goal G5
(on b5 b6)
;goal G8
(on b2 b3)
;goal G6
(on b4 b5)
;goal G9
(on b1 b2)
;goal G3
(on b7 b8)
;real goals
(on b6 b7)
)))
