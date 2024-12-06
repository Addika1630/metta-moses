(= (uniqueSet $expr)
    (if (== $expr ())
        ()
        (let* (($head (car-atom $expr))
                ($tail (uniqueSet (cdr-atom $expr)))
                )
                
                (if (isMember $head $tail)
                    $tail
                    (cons-atom $head $tail)
                )
        )
    )
)

(= (isMember $elem $lst)
    (if (== $lst ())
        False
        (if (== $elem (car-atom $lst))
            True
            (isMember $elem (cdr-atom $lst))
        )
    )
)

! (uniqueSet (A B C C B A))


