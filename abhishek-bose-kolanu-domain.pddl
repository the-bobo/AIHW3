(define (domain family-domain)
  (:requirements :equality)
  (:predicates (male ?x) (female ?x) (not-yet-born ?x) (is-parent-of ?x ?y)
  (is-child-of ?x ?y) (is-sibling-of ?x ?y) (is-uncle-or-aunt-of ?x ?y)
  (is-nephew-or-niece-of ?x ?y) (is-granduncle-or-grandaunt-of ?x ?y)) 
  (:action give-birth-to-son
   	   :parameters (?father ?mother ?child)
  	   :precondition (and (male ?father)
	   		      (female ?mother)
			      (not-yet-born ?child))
	   :effect (and (not (not-yet-born ?child))
	   	   	(male ?child)
			(is-parent-of ?father ?child)
			(is-parent-of ?mother ?child)
			(is-child-of ?child ?father)
			(is-child-of ?child ?mother)))
  (:action give-birth-to-daughter
           :parameters (?father ?mother ?child)
           :precondition (and (male ?father)
                              (female ?mother)
                              (not-yet-born ?child))
           :effect (and (not (not-yet-born ?child))
                        (female ?child)
                        (is-parent-of ?father ?child)
                        (is-parent-of ?mother ?child)
                        (is-child-of ?child ?father)
                        (is-child-of ?child ?mother)))
  (:action conclude-siblings
  	   :parameters (?parent ?child1 ?child2)
	   :precondition (and (is-parent-of ?parent ?child1)
	   		      (is-parent-of ?parent ?child2))
	   :effect (and (is-sibling-of ?child1 ?child2) (is-sibling-of ?child2 ?child1)))
  (:action conclude-uncle-aunt-nephew-niece
  	   :parameters (?aunt ?parent ?child)
	   :precondition (and (is-parent-of ?parent ?child)
	   		      (is-sibling-of ?aunt ?parent))
           :effect (and (is-uncle-or-aunt-of ?aunt ?child)
	   	   	(is-nephew-or-niece-of ?child ?aunt)))
  (:action conclude-granduncle-grandaunt
      :parameters (?uncle ?parent ?person)
    :precondition (and (is-parent-of ?parent ?person)
                        (is-uncle-or-aunt-of ?uncle ?parent))
          :effect (is-granduncle-or-grandaunt-of ?uncle ?person)))
