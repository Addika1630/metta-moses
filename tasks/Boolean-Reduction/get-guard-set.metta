;; The function (getGuardSetExp $expr) extracts the guard set expression from a given input expression $expr.
;; - If $expr is empty, it returns an empty list.
;; - If $expr is a single symbol, it directly returns $expr.
;; - If the root operator of $expr is OR, it returns an empty list since OR nodes are not processed for guard sets.
;; - For AND nodes, it recursively processes the children of $expr (ignoring the AND operator) to identify symbols or NOT expressions.
;; - The function ensures that only valid guard set elements (symbols or NOT expressions) are retained while collapsing other structures.
;; This logic helps identify the meaningful components of a guard set, supporting further transformations or analyses.


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

! (getGuardSetExp (AND a b (NOT a) c (OR a b)))


