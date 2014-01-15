// FEATURE OMIT
    sub create_test_gene {
        my ($schema, $gene_name) = @_;
        my $organism = $schema->resultset('Organism')
            ->search( { common_name => 'human' }, { rows => 1 } )->first;
        $schema->resultset('Feature')->create(
        {   uniquename  => $gene_name,
            organism_id => $organism->organism_id,
            type_id =>
                $schema->resultset('Cvterm')->find( { name => 'gene' } )
                ->cvterm_id
        });
     }
// TEST OMIT
    use Test::More qw/no_plan/;
    use Test::Chado;
    use Test::Chado::Common;

    my $schema = chado_schema(load_fixture => 1);
    create_test_gene($schema, $_) for qw/caboose tucker/;

    has_feature $schema,$_,"should have gene $_" for qw/caboose tucker/;

    drop_schema();
// API OMIT


    prove -v test_chado_feature.t
    ok 1 - should have gene caboose
    ok 2 - should have gene tucker
    1..2
    ok
    All tests successful.
    Files=1, Tests=2,  6 wallclock secs
// OUTPUT OMIT

