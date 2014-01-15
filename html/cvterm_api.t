// CVTERM OMIT
  count_cvterm_ok($schema, \%expected,$description)
  parameters:
     cv: Name of the cv.
     count:Expected number of cvterms in that cv
// SYNONYM OMIT
  has_synonym($schema, \%expected,$description)
   parameters:
        cv: 
        term: Name of the cvterm.
        synonym: Name of the synonym.
// RELATIONSHIP OMIT
  has_relationship($schema, \%expected,$description)
    parameters:
        object:       Parent term.
        subject:      Child term.
        relationship: Relationship term.
// LIST OMIT
    count_obsolete_cvterm_ok
    count_relationship_cvterm_ok
    count_alt_id_ok
    count_comment_ok
    count_object_ok
    count_subject_ok
// COUNT OMIT
    has_alt_id
    has_comment
    has_xref
    is_obsolete_cvterm
// CHECK OMIT

