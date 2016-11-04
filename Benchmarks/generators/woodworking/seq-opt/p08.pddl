; woodworking task with 10 parts and 500% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 68117

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue white green black red mauve - acolour
    mahogany walnut beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (boardsize-successor s8 s9)
    (boardsize-successor s9 s10)
    (boardsize-successor s10 s11)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer1 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    (unused p1)
    (goalsize p1 small)
    (unused p2)
    (goalsize p2 small)
    (unused p3)
    (goalsize p3 large)
    (unused p4)
    (goalsize p4 small)
    (unused p5)
    (goalsize p5 medium)
    (unused p6)
    (goalsize p6 small)
    (unused p7)
    (goalsize p7 medium)
    (unused p8)
    (goalsize p8 large)
    (unused p9)
    (goalsize p9 medium)
    (boardsize b0 s7)
    (wood b0 beech)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 beech)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s11)
    (wood b2 beech)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 beech)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s5)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 walnut)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s4)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 mahogany)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (treatment p1 glazed)
      (available p2)
      (wood p2 walnut)
      (treatment p2 glazed)
      (available p3)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 green)
      (wood p4 walnut)
      (available p5)
      (colour p5 red)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 natural)
      (treatment p6 varnished)
      (available p7)
      (colour p7 green)
      (wood p7 beech)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (wood p9 beech)
      (treatment p9 varnished)
    )
  )
  (:metric minimize (total-cost))
)