;; This code defines a function 'tree-depth' that calculates the maximum depth of a tree structure. 
;; The tree is composed of nodes where each node has a value and potentially a list of subtrees. 
;; 'tree-depth-list' is used to calculate the depth of a list of trees, determining the maximum depth of all the child nodes.


(= (tree-depth ()) 0)

(= (tree-depth (Tree $x $xs))
    (+ 1 (tree-depth-list $xs)))

(= (tree-depth-list Nil) 0)

(= (tree-depth-list ()) 0)

(= (tree-depth-list (Cons $head $tail))
    (let $head-depth (tree-depth $head)
        (let $tail-depth (tree-depth-list $tail)
            (if (> $head-depth $tail-depth)
                $head-depth
                $tail-depth))))



! (tree-depth (Tree A   
                 (Cons (Tree B (Cons (Tree F ()) 
                                     (Cons (Tree G (Cons (Tree H ()) Nil)) Nil)))
                       (Cons (Tree C ()) 
                             (Cons (Tree D ()) 
                                   (Cons (Tree E ()) Nil))))))


                                   