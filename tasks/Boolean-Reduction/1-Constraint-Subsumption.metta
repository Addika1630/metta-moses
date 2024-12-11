;; This function, `(oneConstraintSubsume $Constraint $POA $commandSet)`, evaluates whether a constraint `$Constraint` subsumes 
;; a point-of-analysis (POA) node `$POA` based on a given `$commandSet`. The logic varies depending on the logical structure of `$POA`:
;; - For `NOT` and `OR` nodes, `$Constraint` is returned as-is.
;; - For `AND` nodes, the guard set of `$POA` is compared with `$commandSet` to determine subsumption:
;;     - If no common elements exist, `$Constraint` remains unchanged.
;;     - Otherwise, the POA node is removed from `$Constraint`.
;; - For all other cases (`$else`), `$Constraint` is returned as-is.
;; This process ensures that `$Constraint` reflects the subsumption relationship within the specified context.


(= (getGuardSetExp $expr)
    (if (== $expr ())
        ()
        (if (== (get-metatype $expr) Symbol)
        ($expr)
            (if (== (car-atom $expr) OR)
                ()
                (collapse (let* (($new_tail (if (== (car-atom $expr) AND) (cdr-atom $expr) $expr))
                                ($x  (superpose $new_tail) ))
                                    (if (== (get-metatype $x) Symbol)
                                        $x 
                                        (if (== (car-atom $x) NOT)
                                            $x
                                            (empty)
                                        )
                                    )
                        ) 
                )  
            )
        )
    )
)

(= (removeElement $common $tuple)
   (collapse (subtraction (superpose $tuple) (superpose $common)))
)


(= (oneConstraintSubsume $Constraint $POA $commandSet)
   (let*
      (
        ($head (car-atom $POA))
        ($tail (cdr-atom $POA))
      )
      (case $head
        (
          (NOT ($Constraint))
          (OR ($Constraint))
          (AND
            (let*
              (
                ($guardSet (getGuardSetExp $POA))
                ($common (collapse (intersection (superpose $guardSet) (superpose $commandSet))))
              )
              (if (== $common ()) 
                ($Constraint) 
                ((removeElement ($POA) $Constraint)))
            )
          )
          ($else ($Constraint))
        )
      )
   )
)

! (assertEqualToResult (oneConstraintSubsume (OR) () (A B C)) (((OR))))
! (assertEqualToResult (oneConstraintSubsume (OR (AND A B C)) (AND A B C) (A D E F)) (((OR))))


