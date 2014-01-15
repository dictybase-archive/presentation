// PGENV OMIT
     TC_DSN="dbi:Pg:dbname=chado;host=myhost;port=myport" \ 
         TC_USER=myuser TC_PASS=mypass \
           prove -v test_chado_featureloc.t
// EXP OMIT
    $_> export TC_DSN="dbi:Pg:dbname=chado;host=myhost;port=myport"
    $_ >export TC_USER=myuser
    $_> export TC_PASS=mypass
    $_> prove -v test_chado_featureloc.t
// RUN OMIT
    ok 1 - should have gene todd
    ok 2 - should have gene jorn
    ok 3 - should have featureloc for gene todd
    ok 4 - should have featureloc for gene jorn
    1..4
    ok
    All tests successful.
    Files=1, Tests=4
    Result: PASS
// OUTPUT OMIT
     TC_DSN="dbi:Pg:dbname=herokudb;host=herokuhost" \ 
         TC_USER=herokuuser TC_PASS=herokupass \
           prove -v test_chado_featureloc.t
// HEROKU OMIT
   curl http://api.postgression.com
   postgres://user:password@host/db
// PGAPI OMIT
   TC_POSTGRESSION=1 prove test_chado_featureloc.t
// POSTGRESSION OMIT
