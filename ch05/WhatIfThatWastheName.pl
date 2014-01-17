#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;


my $ref;

{
  my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
  $ref = \@skipper;
  print $ref->[2], "\n";
}

print $ref->[2], "\n";

push @$ref, 'sextant';
print "$ref->[-1]\n"
