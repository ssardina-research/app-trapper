(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:INIT 
(clear b1)
(clear b2)
(clear b6)
(clear b7)
(clear b9)
(handempty )
(on b1 b5)
(on b5 b3)
(on b9 b10)
(ontable b10)
(ontable b2)
(ontable b6)
(ontable b7)
(ontable b8)
(stai_on b3 b4)
(stai_on b4 b8)
)
(:goal (and
(on b8 b9)
))
)
