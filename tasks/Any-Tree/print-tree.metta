;; This code defines a function 'print-tree' that recursively prints the elements of a tree-like structure.
;; The tree is represented with a root element and a list of child nodes. 
;; The 'for-each' function is defined to apply a function to each element of a list, and it is used to traverse the tree's children.
;; The 'print-tree' function uses 'for-each' to print each child node recursively.


(= (print-tree ()) ())

(= (print-tree (Tree $x $children))
   (do
       (println! $x)             
       (for-each print-tree $children))) 
       
(= (for-each $f ())
   ())

(= (for-each $f (Cons $x $xs))
   (do
       ($f $x)
       (for-each $f $xs)))
       
! (print-tree (Tree A 
                 (Cons (Tree B (Cons (Tree F ()) 
                                     (Cons (Tree G (Cons (Tree H ()) Nil)) Nil)))
                       (Cons (Tree C ()) 
                             (Cons (Tree D ()) 
                                   (Cons (Tree E ()) Nil))))))


                                   