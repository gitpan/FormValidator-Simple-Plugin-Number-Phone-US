use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'FormValidator::Simple::Plugin::Number::Phone::US',
    AUTHOR              => 'Benjamin Brodfuehrer <bcmb@wraithsys.net>',
    VERSION_FROM        => 'lib/FormValidator/Simple/Plugin/Number/Phone/US.pm',
    ABSTRACT_FROM       => 'lib/FormValidator/Simple/Plugin/Number/Phone/US.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'        => 0,
        'version'           => 0,
        'Number::Phone::US' => 1.3,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'FormValidator-Simple-Plugin-Number-Phone-US-*' },
);
