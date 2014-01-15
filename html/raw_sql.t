// MODULE OMIT
    use Test::DatabaseRow;
    use Test::Chado qw/:schema/;

    my $schema = chado_schema(load_fixture => 1);
    local $Test::DatabaseRow::dbh = $schema->storage->dbh;
// DBROW OMIT
    my $sql = <<'SQL'
SELECT feature.id FROM feature 
    JOIN organism ON organism.organism_id = feature.feature_id
    JOIN cvterm ON cvterm.cvterm_id =feature.type_id
    JOIN cv ON cv.cv_id = cvterm.cv_id
    WHERE organism.common_name = 'dicty'
    AND cvterm.name = 'gene'
    AND cv.name = 'sequence'
SQL

    row_ok(
        sql => $sql,
        results => $count,
        description => $description
    );

// PARAM OMIT
# In sqllib.ini file ...
   [analysis_count]
           SELECT analysisfeature.analysisfeature_id FROM
               analysisfeature
               JOIN analysis ON
               analysis.analysis_id = analysisfeature.analysis_id
               WHERE analysis.program = ?
               AND 
               analysis.name = ?
               AND
               analysis.programversion = ?
// STATEMENT OMIT
    my $sqllib = SQL::Library->new({lib => 'sqllib.ini'});
    row_ok(
        sql => [$sqllib->retr('analysis_count'), $program, $name,$version],
        results => $count,
        description => $description
    );
// TEST OMIT
