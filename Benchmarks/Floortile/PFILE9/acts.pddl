(:action change-color
  :parameters (?r - robot ?c - color ?c2 - color)
  :precondition (and (robot-has ?r ?c) (available-color ?c2))
  :effect (and (not (robot-has ?r ?c)) (robot-has ?r ?c2)
 ;              (increase (total-cost) 5)
)
) 


(:action paint-up
  :parameters (?r - robot ?y - tile ?x - tile ?c - color)
  :precondition (and (robot-has ?r ?c) (robot-at ?r ?x) (up ?y ?x) (clear ?y))
  :effect (and (not (clear ?y)) (painted ?y ?c)
;               (increase (total-cost) 2)
)
)


(:action paint-down
  :parameters (?r - robot ?y - tile ?x - tile ?c - color)
  :precondition (and (robot-has ?r ?c) (robot-at ?r ?x) (down ?y ?x) (clear ?y))
  :effect (and (not (clear ?y)) (painted ?y ?c)
;(increase (total-cost) 2)
)
)


; Robot movements
(:action up 
  :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and (robot-at ?r ?x) (up ?y ?x) (clear ?y))
  :effect (and (robot-at ?r ?y) (not (robot-at ?r ?x))
               (clear ?x) (not (clear ?y))
  ;             (increase (total-cost) 3)
)
)


(:action down 
  :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and (robot-at ?r ?x) (down ?y ?x) (clear ?y))
  :effect (and (robot-at ?r ?y) (not (robot-at ?r ?x))
               (clear ?x) (not (clear ?y))
 ;              (increase (total-cost) 1)
)
)

(:action right 
  :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and (robot-at ?r ?x) (right ?y ?x) (clear ?y))
  :effect (and (robot-at ?r ?y) (not (robot-at ?r ?x))
               (clear ?x) (not (clear ?y))
;	       (increase (total-cost) 1)
)
)

(:action left 
  :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and (robot-at ?r ?x) (left ?y ?x) (clear ?y))
  :effect (and (robot-at ?r ?y) (not (robot-at ?r ?x))
               (clear ?x) (not (clear ?y))
;               (increase (total-cost) 1)
)
)

