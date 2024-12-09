;; This code defines a recursive function `tree-depth` to calculate the maximum depth of a tree.
;; It handles trees with varying numbers of branches:
;; - Base case: An empty tree has a depth of 0.
;; - For a tree with a single branch (left), the depth is 1 plus the depth of the left subtree.
;; - For a tree with two branches (left and right), the depth is 1 plus the maximum of the depths of the left and right subtrees.
;; - For a tree with three branches (left, middle1, middle2, right), the depth is 1 plus the maximum depth of all four subtrees.


(= (tree-depth ()) 0)  

(= (tree-depth (Tree $x $xs)) (+ 1 (tree-depth $xs))) 

(= (tree-depth (Tree $x $left $right))
    (let $left-depth (tree-depth $left) 
        (let $right-depth (tree-depth $right)  
            (+ 1 (if (> $left-depth $right-depth) 
                     $left-depth
                     $right-depth)))))  

(= (tree-depth (Tree $x $left $middle1 $middle2 $right))
    (let $left-depth (tree-depth $left)
        (let $middle1-depth (tree-depth $middle1)
            (let $middle2-depth (tree-depth $middle2)
                (let $right-depth (tree-depth $right)
                    (+ 1 (if (> $left-depth $middle1-depth)
                              (if (> $left-depth $middle2-depth)
                                  (if (> $left-depth $right-depth)
                                      $left-depth
                                      $right-depth)
                                  (if (> $middle2-depth $right-depth)
                                      $middle2-depth
                                      $right-depth))
                              (if (> $middle1-depth $middle2-depth)
                                  (if (> $middle1-depth $right-depth)
                                      $middle1-depth
                                      $right-depth)
                                  (if (> $middle2-depth $right-depth)
                                      $middle2-depth
                                      $right-depth)))))))))

! (tree-depth (Tree A (Tree B (Tree F ()) (Tree G (Tree H ()))) (Tree C ()) (Tree D ()) (Tree E ())))


