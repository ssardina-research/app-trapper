(define (domain airport_fixed_structure)

(:requirements :typing)

(:types airplane segment direction airplanetype)

(:constants
                north
                south - direction

                light
                medium
                heavy - airplanetype

                seg_09Thresh_0_100
                seg_09Help_0_100
                seg_09_0_150
                seg_A_09_0_100
                seg_Rwy_0_1300
                seg_27Thresh_0_100
                seg_27Help_0_100
                seg_27_0_150
                seg_B_27_0_100
                seg_N1_N2_0_100
                seg_N1_A_0_100
                seg_N2_N3_1_0_86
                seg_N2_N3_0_85
                seg_N3_N_0_100
                seg_N_N4_0_100
                seg_N_C_0_100
                seg_N4_N5_1_0_85
                seg_N4_N5_0_86
                seg_N5_N6_0_100
                seg_N6_B_0_100
                seg_C_C2_0_100
                seg_C2_C3_0_100
                seg_C3_C4_0_50
                seg_C3_C_A01_0_100
                seg_C3_C_B01_0_100
                seg_C4_C5_0_50
                seg_C5_C6_0_50
                seg_C5_C_A02_0_100
                seg_C5_C_B02_0_100
                seg_C6_C7_0_100
                seg_A01_0_100
                seg_A02_0_100
                seg_B01_0_100
                seg_B02_0_100
                seg_N2_N3_2_0_86
                seg_N2_N3_3_0_86
                seg_N2_N3_4_0_85
                seg_N2_N3_5_0_86
                seg_N2_N3_6_0_86
                seg_N4_N5_2_0_86
                seg_N4_N5_3_0_86
                seg_N4_N5_4_0_85
                seg_N4_N5_5_0_86
                seg_N4_N5_6_0_86 - segment

                airplane_CFBEG
                airplane_DFBOY
                airplane_WURST - airplane
)

(:predicates
                ;; airport information
                (has-type ?a - airplane ?t - airplanetype)
                ;; plane a has type t
                (at-segment ?a - airplane ?s - segment)
                ;; planes are at segments, ie at their end in driving direction
                (facing ?a - airplane ?d - direction)
                ;; planes face into their driving direction

                ;; how the planes affect the airport
                (occupied ?s - segment)
                ;; a plane is in here
                (not_occupied ?s - segment)
                (blocked ?s - segment ?a - airplane)
                ;; segment s is blocked if it is endangered by plane p
                (not_blocked ?s - segment ?a - airplane)

                ;; an airplane may lineup on segment s when facing d
                (is-start-runway ?s - segment ?d - direction)

                ;; airplane a is starting from runway s
                (airborne ?a - airplane ?s - segment)

                (is-moving ?a - airplane)
                (is-pushing ?a - airplane)
                (is-parked ?a - airplane ?s - segment)

