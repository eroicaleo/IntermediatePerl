#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;


my @skipper = qw(blue_shirt hat jacket preserver sunscreen);

my $ref_to_skipper = \@skipper;
my $second_ref_to_skipper = $ref_to_skipper;
my $third_ref_to_skipper = \@skipper;


