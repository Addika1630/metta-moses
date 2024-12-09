(= (tree-depth ()) 0)  

(= (tree-depth (Tree $x ())) 1) 

(= (tree-depth (Tree $x $left $right))
    (let $left-depth (tree-depth $left) 
        (let $right-depth (tree-depth $right)  
            (+ 1 (if (> $left-depth $right-depth) 
                     $left-depth
                     $right-depth)))))               

! (tree-depth (Tree A (Tree B (Tree D ()) (Tree E (Tree H ()) (Tree I ()))) (Tree C (Tree F ()) (Tree G ()))))


