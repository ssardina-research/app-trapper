(define (problem bw-typed-n15)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15  - block)
(:INIT (= (cost) 0)
	(dummy-fact)
(clear b10)
(clear b14)
(clear b4)
(handempty )
(ontable b12)
(ontable b15)
(ontable b5)
(stai_on b1 b5)
(stai_on b10 b13)
(stai_on b11 b12)
(stai_on b13 b9)
(stai_on b14 b7)
(stai_on b2 b11)
(stai_on b3 b8)
(stai_on b4 b1)
(stai_on b6 b2)
(stai_on b7 b6)
(stai_on b8 b15)
(stai_on b9 b3)
)
(:goal (and
(dummy-goal)
(on b14 b15)
))
(:metric maximize (cost))
)