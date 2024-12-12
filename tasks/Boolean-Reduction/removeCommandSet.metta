;; The function (removeCommandSet $expr $commandSet) removes elements from $expr that are present in $commandSet.
;; - If $expr is empty, it returns an empty list.
;; - It processes $expr using parallelism (via the superpose library), evaluating each element.
;; - Elements in $expr that match any element in $commandSet are filtered out (set to empty).
;; - Non-matching elements are retained and returned in a collapsed structure.
;; This function ensures efficient removal of command set elements from the input expression, leveraging parallel evaluation for performance optimization.


(: removeCommandSet (-> Expression Expression Expression))

(= (removeCommandSet $expr $commandSet)
    ;; Check if the expression is empty
    (if (== $expr ())
        ()
        (collapse (let $list 
                            (let $x (superpose $expr) 
                                (if (isMember $x $commandSet) 
                                    (empty) 
                                    $x
                                )
                            ) 
                        $list
                    )
        )  
    )
)

(= (isMember $x $tuple)
    (if (== $tuple ()) False
        (let*
            (
                ($head (car-atom $tuple))
                ($tail (cdr-atom $tuple))
            )
            (
                if (== $x $head) True (isMember $x $tail)
            )
        )
    )
)

! (removeCommandSet (AND a b (NOT a) c (OR a b)) (a b))


