; Base case: Empty tree has depth 0
(= (tree-depth ()) 0)  

; Case: Single node tree has depth 1
(= (tree-depth (Tree $x $xs)) (+ 1 (tree-depth $xs))) 

; Case: Binary tree (left and right subtrees)
(= (tree-depth (Tree $x $left $right))
    (let $left-depth (tree-depth $left) 
        (let $right-depth (tree-depth $right)  
            (+ 1 (if (> $left-depth $right-depth) 
                     $left-depth
                     $right-depth)))))  

; Case: Ternary tree (left, middle1, middle2, right)
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

; Test case: Multiple node tree
! (tree-depth (Tree A (Tree B (Tree F ()) (Tree G (Tree H ()))) (Tree C ()) (Tree D ()) (Tree E ())))