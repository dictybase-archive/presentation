// IMPORT OMIT
use Test::More;
use CustomModule;
BEGIN { use_ok( 'Some::Module' ); }
// LOAD OMIT

ok($got eq $expected, $test_name);
is  ($got, $expected, $test_name);
isnt($got, $expected, $test_name);
like($got, qr/$expected/,$test_name);
custom_test($got,$expected,$test_name);
done_testing;
// API OMIT

prove basic.t
make test
./Build
// RUN OMIT



