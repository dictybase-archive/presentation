// FIXTURE OMIT
    sub create_test_floc {
        my ($schema, $locations) = @_;
        my $organism = $schema->resultset('Organism')
            ->search( { common_name => 'human' }, { rows => 1 } )->first;
        for my $data(@$locations) {
            $schema->resultset('Feature')->create(
                {   
                    uniquename  => $data->{name},
                    organism_id => $organism->organism_id,
                    type_id =>
                            $schema->resultset('Cvterm')->find( { name => 'gene' } )
                            ->cvterm_id,
                    featureloc_features => [
                      {
                        fmin => $data->{start},
                        fmax => $data->{end}
                      }
                    ]
                }
            );
        }
    }
// API OMIT
    my $schema = chado_schema(load_fixture => 1);
    create_test_floc($schema, 
        [ {name => 'todd', start => 10, end => 50},
          {name => 'jorn', start => 60, end => 100}
        ]);

    has_feature $schema,$_,"should have gene $_" for qw/todd jorn/;
    has_featureloc $schema,$_,"should have featureloc for gene $_" for qw/todd jorn/;
    drop_schema();
// RUN OMIT
    prove -v test_chado_featureloc.t

    ok 1 - should have gene todd
    ok 2 - should have gene jorn
    ok 3 - should have featureloc for gene todd
    ok 4 - should have featureloc for gene jorn
    1..4
    ok
    All tests successful.
    Files=1, Tests=4
// OUTPUT OMIT

