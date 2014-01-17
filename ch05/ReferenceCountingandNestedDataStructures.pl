#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;


sub initilize_provisions_list {
  my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
  my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
  my @professor = qw(sunscreen water_bottle slide_rule batteries radio);

  my @skipper_with_name = ('Skipper' => \@skipper);
  my @gilligan_with_name = ('Gilligan' => \@gilligan);
  my @professor_with_name = ('Professor' => \@professor);

  return (
    \@skipper_with_name,
    \@gilligan_with_name,
    \@professor_with_name
  );
}

my @all_with_name = initilize_provisions_list();

my $gilligan_staff = $all_with_name[1][1];

print "@$gilligan_staff\n";
