use strict;
use Test::More tests => 19;
use CGI;

use FormValidator::Simple;
FormValidator::Simple->import('Number::Phone::US');

my $q = CGI->new;
my $line = 17;

for (1..$line) {
  my $num = <DATA>;
  chomp $num;
  $q->param( tel => $num );
  my $r = FormValidator::Simple->check( $q => [ tel => [qw/NUMBER_PHONE_US/] ] );
  ok(!$r->invalid('tel'));
}

while (<DATA>) {
  chomp;
  $q->param( tel => $_ );
  my $r = FormValidator::Simple->check( $q => [ tel => [qw/NUMBER_PHONE_US/] ] );
  ok($r->invalid('tel'));
}

__DATA__
(734) 555 1212
(734) 555.1212
(734) 555-1212
(734) 5551212
(734)5551212
734 555 1212
734.555.1212
734-555-1212
7345551212
555 1212
555.1212
555-1212
5551212
5 1212
5.1212
5-1212
51212
734-555.1212
734-5551212
