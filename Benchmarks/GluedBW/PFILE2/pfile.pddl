(define (problem bw-typed-n5)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5  - block)
(:INIT (= (cost) 0)
	(dummy-fact)
(clear b1)
(handempty )
(on b1 b2)
(on b2 b3)
(on b3 b4)
(on b4 b5)
(ontable b5)
)
(:goal (and
(dummy-goal)
(on b2 b3)
))
(:metric maximize (cost))
)
