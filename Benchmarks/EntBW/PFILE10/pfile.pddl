(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:INIT 
(clear b1)
(clear b3)
(clear b4)
(clear b6)
(clear b8)
(clear b9)
(handempty )
(on b1 b2)
(on b4 b5)
(on b5 b10)
(on b6 b7)
(ontable b10)
(ontable b2)
(ontable b3)
(ontable b7)
(ontable b8)
(ontable b9)
(stai_on b5 b10)
)
(:goal (and
(on b9 b10)
))
)