; put you code here
; Base case: Empty tree
(= (print-tree ()) ())

; Base case: Single node

(= (print-tree (Tree $x $left))
   (do
       (println! $x)   
       (print-tree $left)))

; Recursive case for a binary tree (left and right)
(= (print-tree (Tree $x $left $right))
   (do
       (println! $x)       
       (print-tree $left)  
       (print-tree $right)))

; Recursive case for a ternary tree (left, middle1, middle2, right)
(= (print-tree (Tree $x $left $middle1 $middle2 $right))
   (do
       (println! $x)     
       (print-tree $left)   
       (print-tree $middle1)
       (print-tree $middle2)
       (print-tree $right))) 

; Test the print-tree function with your input
! (print-tree (Tree A (Tree B (Tree F ()) (Tree G (Tree H ()))) (Tree C ()) (Tree D ()) (Tree E ())))