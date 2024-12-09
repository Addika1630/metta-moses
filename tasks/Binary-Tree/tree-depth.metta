;; This code defines a recursive function `tree-depth` that calculates the depth (or height) of a 
;; binary tree. The depth is determined by the longest path from the root node to a leaf node, 
;; where the depth of a leaf node is 1. The function works by recursively calculating the depths 
;; of the left and right subtrees and returning the greater of the two, plus one for the current node.

;; Base cases:
;; - An empty tree has a depth of 0.
;; - A tree with only one node has a depth of 1.
;; Recursive case:
;; - For a tree with both left and right subtrees, the depth is 1 plus the maximum of the depths 
;;   of the left and right subtrees.


(= (tree-depth ()) 0)  

(= (tree-depth (Tree $x ())) 1) 

(= (tree-depth (Tree $x $left $right))
    (let $left-depth (tree-depth $left) 
        (let $right-depth (tree-depth $right)  
            (+ 1 (if (> $left-depth $right-depth) 
                     $left-depth
                     $right-depth)))))               

! (tree-depth (Tree A (Tree B (Tree D ()) (Tree E (Tree H ()) (Tree I ()))) (Tree C (Tree F ()) (Tree G ()))))


