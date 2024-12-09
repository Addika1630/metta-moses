;; This code defines a recursive function `update-value` that updates a value in a binary tree. 
;; It takes three arguments: the tree, the old value ($old), and the new value ($new). 

;; - Base case: If the tree is empty, return an empty tree.
;; - Recursive case: If the node's value matches $old, update it to $new. Otherwise, recursively update 
;;   the left and right subtrees.

;; Example: Replaces "C" with "K" in the given tree.


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


