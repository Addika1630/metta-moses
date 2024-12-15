(= (evaluate $expr)
    (if (== (get-metatype $expr) Grounded) ; T/ F
        $expr
        (let* (
            ($op (car-atom $expr))       
            ($tuple (cdr-atom $expr))     
            ($mapped (map evaluate $tuple))
        )
            (if (== $op AND)
                (all $mapped)            
                (if (== $op OR)
                    (any $mapped)        
                    ERROR               
                )
            )
        )
    )
)

(= (map $f $tuple)
   (if (== $tuple ())
       ()
       (let*
         (
            ($x (car-atom $tuple))
            ($xs (cdr-atom $tuple))
            ($x' ($f $x))
            ($next (map $f $xs))
         )
         (cons-atom $x' $next)
       )
   )
)

(= (isMember $x $list)
    (not (== (collapse (intersection (superpose ($x)) (superpose $list))) ()))
)

(= (any $bools) (isMember True $bools))
(= (all $bools)
    (not (isMember False $bools))) ; True if no False is in the list



! (evaluate (AND True (OR True False True) True True (OR True True (AND True False))))


