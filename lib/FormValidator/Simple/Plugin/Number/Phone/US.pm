package FormValidator::Simple::Plugin::Number::Phone::US;

use warnings;
use strict;
use Carp;

use version; our $VERSION = qv('0.0.2');

use Number::Phone::US qw/is_valid_number/;
use FormValidator::Simple::Constants;
our @CARP_NOT = qw/Number::Phone::US/;


sub NUMBER_PHONE_US
{
  my($self,$params,$args) = @_;

  my $data = $params->[0];
  
  return is_valid_number($data) ? TRUE : FALSE;
}

1;
__END__

=head1 NAME

FormValidator::Simple::Plugin::Number::Phone::US - United States phone number validation


=head1 SYNOPSIS

    use FormValidator::Simple qw/Number::Phone::US/;

    my $result = FormvValidator::Simple->check( $q => [ tel => [qw/NOT_BLANK PHONE_NUMBER_US/] ] );

  
=head1 DESCRIPTION

This module adds United States phone number validation to FormValidator::Simple

=head1 DEPENDENCIES

L<FormValidator::Simple>

L<Number::Phone:US>


=head1 INCOMPATIBILITIES

None reported.


=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-formvalidator-simple-plugin-number-phone-us@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.


=head1 AUTHOR

Benjamin Brodfuehrer  C<< <bcmb@wraithsys.net> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2008 Benjamin Brodfuehrer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

=head1 OTHER

perl
