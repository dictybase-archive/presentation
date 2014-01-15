// IMPORT OMIT
    use Test::More qw/no_plan/;
    use Test::Chado;
    use Test::Chado::Common;
// LOAD OMIT

    my $schema = chado_schema(load_fixture => 1)
// CHADO OMIT

    has_cv($schema,'sequence', 'should have sequence cv namespace');
// EXAMPLE OMIT

    has_cvterm($schema,'gene', 'should have gene cvterm');
    has_cvterm($schema,'polypeptide', 'should have polypeptide cvterm');
    has_dbxref($schema,'SO:0000704', 'should have dbxref' );
    has_dbxref($schema,'SO:0000253', 'should have tRNA dbxref' );
// API OMIT

    drop_schema()
// TEARDOWN OMIT

    prove -v quickstart.t

    ok 1 - should have sequence cv namespace
    ok 2 - should have gene cvterm
    ok 3 - should have polypeptide cvterm
    ok 4 - should have dbxref
    ok 5 - should have tRNA dbxref
    1..5
    ok
    All tests successful.
    Files=1, Tests=5
    Result: PASS
// OUTPUT OMIT


