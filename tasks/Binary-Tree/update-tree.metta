(= (update-value () $old $new) ())

(= (update-value (Tree $x ())$old $new) 
    (if (== $x $old)
        (Tree $new ())
        (Tree $x ())
    )
)

(= (update-value (Tree $x $left $right) $old $new)
    (Tree (if (== $x $old)
                $new
                $x
        )
    (update-value $left $old $new)
    (update-value $right $old $new))
)

! (update-value (Tree A (Tree B (Tree D ()) (Tree E (Tree H ()) (Tree I ()))) (Tree C (Tree F ()) (Tree G ()))) C K)


