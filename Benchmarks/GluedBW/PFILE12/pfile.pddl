(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:INIT 
(clear b1)
(clear b5)
(clear b8)
(handempty )
(on b1 b6)
(on b2 b10)
(on b4 b2)
(on b8 b9)
(on b9 b4)
(ontable b3)
(ontable b5)
(ontable b7)
(stai_on b10 b3)
(stai_on b6 b7)
)
(:goal (and
(on b7 b8)
))
)
