use strict;
use warnings;

use Test::More;
use Math::SZaru;

SCOPE: {
  my $e = Math::SZaru::TopEstimator->new(1000);
  isa_ok($e, 'Math::SZaru::TopEstimator');

  is_deeply($e->estimate(), [], "estimate on empty set");
  is($e->tot_elems(), 0, "tot_elems on empty set");

  $e->add_elem("foo");
  $e->add_elem("bar");
  $e->add_elem("bar");
  $e->add_elem("baz");
  $e->add_elem("baz");
  $e->add_elem("baz");
  is_deeply($e->estimate(), [[baz => 3,], [bar => 2], [foo => 1]], "estimate on smaller-than-exact-storage set");
  is($e->tot_elems(), 6, "tot_elems on smaller-than-exact-storage set");

  $e->add_weighted_elem("blarg", 100);
  is_deeply($e->estimate(), [[blarg => 100], [baz => 3,], [bar => 2], [foo => 1]], "estimate on smaller-than-exact-storage set");
  is($e->tot_elems(), 7, "tot_elems on smaller-than-exact-storage set");

  $e = Math::SZaru::TopEstimator->new(100);
  isa_ok($e, 'Math::SZaru::TopEstimator');
  for my $x (1..500) {
    $e->add_weighted_elem($x, $x);
    $e->add_elem($x) for 1..int(sqrt($x));
  }
  is($e->estimate()->[0][0], 500);
}

pass();
done_testing();

