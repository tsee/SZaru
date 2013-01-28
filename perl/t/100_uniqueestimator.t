use strict;
use warnings;

use Test::More;
use Math::SZaru;

SCOPE: {
  my $e = Math::SZaru::UniqueEstimator->new(10000);
  isa_ok($e, 'Math::SZaru::UniqueEstimator');
}

pass();
done_testing();

