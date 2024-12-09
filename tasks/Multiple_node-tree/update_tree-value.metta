;; This code defines a recursive function `update-value` to update a value in a tree.
;; It works as follows:
;; - Base case: If the tree is empty, there is nothing to update.
;; - If the tree has one branch (x and xs), the value is updated if x equals the old value, otherwise, the tree remains unchanged.
;; - For trees with two branches (left and right), the update is applied to both branches recursively.
;; - For trees with three branches (left, middle1, middle2, right), the update is applied recursively to all four branches.


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


