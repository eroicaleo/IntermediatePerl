#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;

my @input_numbers = (1, 2, 4, 8, 16, 32);

my @old_digit_sum = grep {
  my $sum;
  $sum += $_ for (split //);
  $sum % 2;
} @input_numbers;

say "@old_digit_sum";
