(define (problem family-4)
	(:domain family-domain)
	(:objects p1 p2 p3 p4 p5 p6)
	(:init (male p1) (female p2) (female p3) (female p4) (male p5) (male p6))
	(:goal (is-granduncle-or-grandaunt-of p1 p1))
)