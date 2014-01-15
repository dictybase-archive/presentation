// MAKEFILE OMIT

    use strict;
    use warnings;
    use ExtUtils::MakeMaker;

    WriteMakefile(
        NAME                => 'TestChado::WithMakeFile',
        AUTHOR              => q{Siddhartha Basu <sidd.basu@gmail.com>},
        VERSION_FROM        => 'lib/TestChado/WithMakeFile.pm',
        ABSTRACT_FROM       => 'lib/TestChado/WithMakeFile.pm',
            ($ExtUtils::MakeMaker::VERSION >= 6.3002
                ? ('LICENSE'=> 'perl')
                : ()),
        PL_FILES            => {},
        PREREQ_PM => {
            'Test::Chado' => '1.0.0'
        },
        dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
        clean               => { FILES => 'TestChado-WithMakeFile-*' },
    );

// MAKEEND OMIT
    use Module::Build;
    my %module_build_args = (
        "configure_requires" => {
            "Module::Build" => "0.3601"
         },
        "dist_abstract" => "Toy distribution with Build.PL",
        "dist_author" => [
                "Siddhartha Basu <biosidd\@gmail.com>"
            ],
        "dist_name" => "TestChado-WithBuildPL",
        "dist_version" => "1.0.0",
        "license" => "perl",
        "module_name" => "TestChado::WithBuildPL",
        "requires" => { 'Test::Chado' => '1.0.0'}
    );
    my $build = Module::Build->new(%module_build_args);
    $build->create_build_script;
// BUILDEND OMIT
t/chado2gaf/validate_gaf.t ......................... ok                 
t/gaf2chado/gaf.t .................................. ok                 
t/gaf2chado/datastash.t ............................ ok                 
t/gaf2chado/gaf_row.t .............................. ok                 
t/gaf2chado/gaf_manager.t .......................... ok                 
t/export/gene_summary.t ............................ ok                 
t/loader/chado/transitive_closure_sqlite_update.t .. ok                 
t/loader/chado/gff3_sqlite.t ....................... ok                 
t/loader/chado/transitive_closure_sqlite.t ......... ok                 
t/loader/gff3tochado_sqlite.t ...................... ok                 
t/loader/chado/transitive_closure_pg.t ............. ok                 
===(      59;42  2/?  1/?  0/?  1/?  1/?  1/? )
// PARALLEL OMIT

