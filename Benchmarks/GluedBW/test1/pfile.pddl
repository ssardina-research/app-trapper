(define (problem test)(:domain blocksworld)
(:objects a b c d - block)
(:INIT (= (cost) 0)
	(dummy-fact)
(clear a)
(clear b)
(handempty )
(on b c)
(on c d)
(ontable a)
(ontable d)
)
(:goal (and
(dummy-goal)
(on a b)
))
(:metric maximize (cost))
)
