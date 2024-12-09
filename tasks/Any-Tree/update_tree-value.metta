;; This code defines the 'update-value' function for updating values in a tree structure. 
;; It recursively traverses the tree and updates all nodes matching the specified value ('$old') with a new value ('$new'). 
;; The 'update-value-list' function handles updating values within lists of trees, ensuring the entire structure is processed.


(: Nil (List $t))
(: Cons (-> $t (List $t) (List $t)))
(: Tree (-> $x (List (Tree $x $xs)) (Tree $x $xs)))
(: update-value (-> (Tree $x $xs) $x $x (Tree $x $xs)))
(: update-value-list (-> (List (Tree $x $xs)) $x $x (List (Tree $x $xs))))


(= (update-value () $old $new) ())

(= (update-value (Tree $x $xs) $old $new)
    (Tree (if (== $x $old) $new $x)
          (update-value-list $xs $old $new)))

(= (update-value-list Nil $old $new) Nil)

(= (update-value-list () $old $new) ()) 

(= (update-value-list (Cons $head $tail) $old $new)
    (Cons (update-value $head $old $new)
          (update-value-list $tail $old $new)))

! (update-value (Tree A  
                 (Cons (Tree B (Cons (Tree F ()) 
                                     (Cons (Tree G (Cons (Tree H ()) Nil)) Nil)))
                       (Cons (Tree C ()) 
                             (Cons (Tree D ()) 
                                   (Cons (Tree E ()) Nil))))) C R)


                                   