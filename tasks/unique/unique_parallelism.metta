(= (uniqueSet $expr)
    (if (== $expr ())
        ()
        (intersection (union (superpose $expr) (superpose $expr)) (superpose $expr) )
    )
)

! (uniqueSet (A B C C B A))
! (intersection (superpose (A B C C B A)) (superpose (A B C C B A)))

(= (unique-atom $expr)
    (if (== $expr ())
        ()
        (let* ((all-elements (superpose $expr)))
          (intersection all-elements all-elements) )))

! (unique-atom (A B C C B A))
! (intersection (superpose (A B C C B A)) (superpose (A B C C B A)))


