package Math::SZaru;
use 5.008;
use strict;
use warnings;

our $VERSION = '0.01';

require XSLoader;
XSLoader::load('Math::SZaru', $VERSION);

1;
__END__

=head1 NAME

Math::SZaru - Perl wrapper for the SZaru C++ library

=head1 DESCRIPTION

TODO

=head1 SEE ALSO

L<llamerada.github.com/SZaru/>

=head1 AUTHOR

Steffen Mueller, E<lt>smueller@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

The Perl wrapper of the SZaru library is:

Copyright (C) 2013 by Steffen Mueller

Just like SZaru itself, it is licensed 
under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=cut
