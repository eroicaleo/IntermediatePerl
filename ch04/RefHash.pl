#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;

my %gilligan_info = (
  'name' => 'Gilligan',
  'hat' => 'White',
  'shirt' => 'red',
  'position' => 'First Mate',
);

my $hash_ref = \%gilligan_info;

say "$$hash_ref{'name'}";
say "$hash_ref->{'name'}";
say "$gilligan_info{'name'}";

foreach my $key (%gilligan_info) {
  say "$key";
}

my @array = keys %gilligan_info;
say "@array";
@array = keys %$hash_ref;
say "@array";

my %skipper_info = (
  'name' => 'Skipper',
  'hat' => 'Black',
  'shirt' => 'blue',
  'position' => 'Captain'
);

my @crew = (\%gilligan_info, \%skipper_info);

say "${$crew[1]}{'name'}";
say "$crew[1]->{'name'}";
say "$crew[1]{'name'}";

my $format = "%-15s %-7s %-7s %-15s\n";
printf $format, qw(Name Shirt Hat Position);
foreach my $crewmember (@crew) {
  printf $format,
  @$crewmember{qw(name shirt hat position)};
}
