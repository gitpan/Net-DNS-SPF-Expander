
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Expands DNS SPF records, so you don't have to.",
  "AUTHOR" => "Amiri Barksdale <amiri\@campusexplorer.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Net-DNS-SPF-Expander",
  "EXE_FILES" => [
    "script/dns-spf-expander"
  ],
  "LICENSE" => "perl",
  "NAME" => "Net::DNS::SPF::Expander",
  "PREREQ_PM" => {
    "IO::All" => 0,
    "List::AllUtils" => 0,
    "Moose" => 0,
    "MooseX::Getopt" => 0,
    "MooseX::Types::IO::All" => 0,
    "Net::DNS::Resolver" => 0,
    "Net::DNS::ZoneFile" => 0,
    "Scalar::Util" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Data::Printer" => 0,
    "Test::Differences" => 0,
    "Test::Exception" => 0,
    "Test::More" => 0,
    "lib" => 0
  },
  "VERSION" => "0.014",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Data::Printer" => 0,
  "IO::All" => 0,
  "List::AllUtils" => 0,
  "Moose" => 0,
  "MooseX::Getopt" => 0,
  "MooseX::Types::IO::All" => 0,
  "Net::DNS::Resolver" => 0,
  "Net::DNS::ZoneFile" => 0,
  "Scalar::Util" => 0,
  "Test::Differences" => 0,
  "Test::Exception" => 0,
  "Test::More" => 0,
  "lib" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



