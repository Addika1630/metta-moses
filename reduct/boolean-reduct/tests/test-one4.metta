! (register-module! ../../../../metta-moses) 

! (import! &self metta-moses:utilities:general-helpers)
! (import! &self metta-moses:reduct:boolean-reduct:rte-helpers)
! (import! &self metta-moses:reduct:boolean-reduct:one-constraint-subsumption)


! (assertEqualToResult (oneConstraintSubsume () () (A B C)) (()))

! (assertEqualToResult (oneConstraintSubsume A A (A B C)) (A))

! (assertEqualToResult (oneConstraintSubsume (OR A B (AND C D)) (OR A B (AND C D)) (A C D)) ((OR A B (AND C D))))

! (assertEqualToResult (oneConstraintSubsume (NOT A) (NOT A) (A B)) ((NOT A)))

! (assertEqualToResult (oneConstraintSubsume (AND E D) (AND E D) (D)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A (OR (AND B (OR (AND E D) C)) D)) (AND A (OR (AND B (OR (AND E D) C)) D)) ()) ((AND A (OR (AND B (OR (AND E D) C)) D))))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (A D E F)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (D E F)) ((AND A B C)))

! (assertEqualToResult (oneConstraintSubsume () () (A B C)) (()))

! (assertEqualToResult (oneConstraintSubsume A A (A B C)) (A))

! (assertEqualToResult (oneConstraintSubsume (OR A B (AND C D)) (OR A B (AND C D)) (A C D)) ((OR A B (AND C D))))

! (assertEqualToResult (oneConstraintSubsume (NOT A) (NOT A) (A B)) ((NOT A)))

! (assertEqualToResult (oneConstraintSubsume (AND E D) (AND E D) (D)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A (OR (AND B (OR (AND E D) C)) D)) (AND A (OR (AND B (OR (AND E D) C)) D)) ()) ((AND A (OR (AND B (OR (AND E D) C)) D))))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (A D E F)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (D E F)) ((AND A B C)))

! (assertEqualToResult (oneConstraintSubsume () () (A B C)) (()))

! (assertEqualToResult (oneConstraintSubsume A A (A B C)) (A))

! (assertEqualToResult (oneConstraintSubsume (OR A B (AND C D)) (OR A B (AND C D)) (A C D)) ((OR A B (AND C D))))

! (assertEqualToResult (oneConstraintSubsume (NOT A) (NOT A) (A B)) ((NOT A)))

! (assertEqualToResult (oneConstraintSubsume (AND E D) (AND E D) (D)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A (OR (AND B (OR (AND E D) C)) D)) (AND A (OR (AND B (OR (AND E D) C)) D)) ()) ((AND A (OR (AND B (OR (AND E D) C)) D))))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (A D E F)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (D E F)) ((AND A B C)))

! (assertEqualToResult (oneConstraintSubsume () () (A B C)) (()))

! (assertEqualToResult (oneConstraintSubsume A A (A B C)) (A))

! (assertEqualToResult (oneConstraintSubsume (OR A B (AND C D)) (OR A B (AND C D)) (A C D)) ((OR A B (AND C D))))

! (assertEqualToResult (oneConstraintSubsume (NOT A) (NOT A) (A B)) ((NOT A)))

! (assertEqualToResult (oneConstraintSubsume (AND E D) (AND E D) (D)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A (OR (AND B (OR (AND E D) C)) D)) (AND A (OR (AND B (OR (AND E D) C)) D)) ()) ((AND A (OR (AND B (OR (AND E D) C)) D))))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (A D E F)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (D E F)) ((AND A B C)))

! (assertEqualToResult (oneConstraintSubsume () () (A B C)) (()))

! (assertEqualToResult (oneConstraintSubsume A A (A B C)) (A))

! (assertEqualToResult (oneConstraintSubsume (OR A B (AND C D)) (OR A B (AND C D)) (A C D)) ((OR A B (AND C D))))

! (assertEqualToResult (oneConstraintSubsume (NOT A) (NOT A) (A B)) ((NOT A)))

! (assertEqualToResult (oneConstraintSubsume (AND E D) (AND E D) (D)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A (OR (AND B (OR (AND E D) C)) D)) (AND A (OR (AND B (OR (AND E D) C)) D)) ()) ((AND A (OR (AND B (OR (AND E D) C)) D))))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (A D E F)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (D E F)) ((AND A B C)))

! (assertEqualToResult (oneConstraintSubsume () () (A B C)) (()))

! (assertEqualToResult (oneConstraintSubsume A A (A B C)) (A))

! (assertEqualToResult (oneConstraintSubsume (OR A B (AND C D)) (OR A B (AND C D)) (A C D)) ((OR A B (AND C D))))

! (assertEqualToResult (oneConstraintSubsume (NOT A) (NOT A) (A B)) ((NOT A)))

! (assertEqualToResult (oneConstraintSubsume (AND E D) (AND E D) (D)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A (OR (AND B (OR (AND E D) C)) D)) (AND A (OR (AND B (OR (AND E D) C)) D)) ()) ((AND A (OR (AND B (OR (AND E D) C)) D))))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (A D E F)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (D E F)) ((AND A B C)))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (A D E F)) (()))

! (assertEqualToResult (oneConstraintSubsume (AND A B C) (AND A B C) (D E F)) ((AND A B C)))


