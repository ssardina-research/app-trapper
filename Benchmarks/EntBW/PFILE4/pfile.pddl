(define (problem bw-typed-n5)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5  - block)
(:INIT 
(clear b1)
(clear b4)
(handempty )
(on b1 b2)
(on b4 b5)
(on b5 b3)
(ontable b2)
(ontable b3)
(stai_on b5 b3)
)
(:goal (and
(on b2 b3)
))
)