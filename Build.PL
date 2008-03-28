use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'FormValidator::Simple::Plugin::Number::Phone::US',
    license             => 'perl',
    dist_author         => 'Benjamin Brodfuehrer <bcmb@wraithsys.net>',
    dist_version_from   => 'lib/FormValidator/Simple/Plugin/Number/Phone/US.pm',
    requires => {
        'Test::More'        => 0,
        'version'           => 0,
        'Number::Phone::US' => 1.3,
    },
    add_to_cleanup      => [ 'FormValidator-Simple-Plugin-Number-Phone-US-*' ],
);

$builder->create_build_script();
