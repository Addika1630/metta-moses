;; This code defines a recursive function `print-tree` that traverses and prints
;; the nodes of a binary tree. The function first prints the root node and then 
;; recursively prints the left and right subtrees. 
;; It works for a binary tree with arbitrary depth and structure.
;; The example given prints the structure of a binary tree in a pre-order traversal.

(= (print-tree (Tree $x ())) (println! $x)) 

(= (print-tree (Tree  $x $left $right)) 
   (do 
      (println! $x) 
      (print-tree $left)  
      (print-tree $right))) 

! (print-tree (Tree A (Tree B (Tree D ()) (Tree  E (Tree  H ()) (Tree  I ()))) (Tree  C (Tree  F ()) (Tree  G ()))))


