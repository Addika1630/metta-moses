;; This code defines a recursive function `print-tree` to print the values of a tree in pre-order traversal.
;; It handles trees of varying structures:
;; - Base case: If the tree is empty, return nothing.
;; - For a tree with one child (left), print the node and recursively print the left subtree.
;; - For a tree with two children (left and right), print the node and recursively print both subtrees.
;; - For a tree with three children (left, middle, right), print the node and recursively print all three subtrees.


(= (print-tree ()) ())


(= (print-tree (Tree $x $left))
   (do
       (println! $x)   
       (print-tree $left)))

(= (print-tree (Tree $x $left $right))
   (do
       (println! $x)       
       (print-tree $left)  
       (print-tree $right)))

(= (print-tree (Tree $x $left $middle1 $middle2 $right))
   (do
       (println! $x)     
       (print-tree $left)   
       (print-tree $middle1)
       (print-tree $middle2)
       (print-tree $right))) 

! (print-tree (Tree A (Tree B (Tree F ()) (Tree G (Tree H ()))) (Tree C ()) (Tree D ()) (Tree E ())))


