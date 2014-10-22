
ff: parsing domain file
domain 'FAMILY-DOMAIN' defined
 ... done.
ff: parsing problem file
problem 'FAMILY-4' defined
 ... done.



Cueing down from goal distance:    6 into depth [1]

Enforced Hill-climbing failed !
switching to Best-first Search now.

advancing to distance :    6
                           5
                           3
                           2
                           1
                           0

ff: found legal plan as follows

step    0: GIVE-BIRTH-TO-DAUGHTER P1 P2 P4
        1: GIVE-BIRTH-TO-SON P1 P4 P3
        2: GIVE-BIRTH-TO-SON P3 P2 P5
        3: CONCLUDE-SIBLINGS P2 P5 P4
        4: CONCLUDE-UNCLE-AUNT-NEPHEW-NIECE P5 P4 P3
        5: CONCLUDE-GRANDUNCLE-GRANDAUNT P5 P3 P5
     

time spent:    0.00 seconds instantiating 1715 easy, 0 hard action templates
               0.00 seconds reachability analysis, yielding 77 facts and 195 actions
               0.00 seconds creating final representation with 75 relevant facts
               0.00 seconds building connectivity graph
               0.00 seconds searching, evaluating 45 states, to a max depth of 1
               0.00 seconds total time

