; put you code here
(= (update-value () $old $new) ())

(= (update-value (Tree $x $xs) $old $new)
    (Tree (if (== $x $old) $new $x)
        (update-value $xs $old $new)))

(= (update-value (Tree $x $left $right) $old $new)
    (Tree (if (== $x $old) $new $x)
        (update-value $left $old $new)
        (update-value $right $old $new)))

(= (update-value (Tree $x $left $middle1 $middle2 $right) $old $new)
    (Tree (if (== $x $old) $new $x)
        (update-value $left $old $new)
        (update-value $middle1 $old $new)
        (update-value $middle2 $old $new)
        (update-value $right $old $new)))

! (update-value (Tree A (Tree B (Tree F ()) (Tree G (Tree H ()))) (Tree C ()) (Tree D ()) (Tree E ())) C R)