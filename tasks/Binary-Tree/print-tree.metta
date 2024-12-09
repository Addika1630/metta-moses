; Specific case: If the tree consists of a single node with no children, 
(= (print-tree (Tree $x ())) (println! $x)) 

; Recursive case: For trees with left and right subtrees, print the current node 
(= (print-tree (Tree  $x $left $right)) 
   (do 
      (println! $x) 
      (print-tree $left)  
      (print-tree $right))) 

;; This call will print the binary tree structure rooted at A.
! (print-tree (Tree A (Tree B (Tree D ()) (Tree  E (Tree  H ()) (Tree  I ()))) (Tree  C (Tree  F ()) (Tree  G ()))))


