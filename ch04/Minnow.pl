#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;


my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
my @professor = qw(sunscreen water_bottle slide_rule batteries radio);

my @skipper_with_name = ('Skipper' => \@skipper);
my @gilligan_with_name = ('Gilligan' => \@gilligan);
my @professor_with_name = ('Professor' => \@professor);

my @all_with_name = (
  \@skipper_with_name,
  \@gilligan_with_name,
  \@professor_with_name
);

check_required_item(@{$_}) for (@all_with_name);

my $ref_to_skipper = \@skipper;
my $second_ref_to_skipper = $ref_to_skipper;

if ($ref_to_skipper == $second_ref_to_skipper) {
  print "They are identical reference!\n";
}
say $ref_to_skipper;
say \$ref_to_skipper;
say $second_ref_to_skipper;
say \$second_ref_to_skipper;

say "${${${all_with_name[2]}}[1]}[0]";
say "$all_with_name[2]->[0]";
say "$all_with_name[2]->[1]->[0]";

my $root = \@all_with_name;
say "$root->[2]->[1]->[0]";
say "$root->[2][1][0]";


sub check_required_item {
  my $who = shift;
  my $items = shift;
  my @required = qw(preserver sunscreen water_bottle jacket);
  my @missing;
  foreach my $item (@required) {
    unless (grep {$item eq $_} @$items) {
      say "$who is missing $item!";
      push @missing, $item;
    }
  }

  if (@missing) {
    print "Adding @missing to @$items for $who.\n";
    push @$items, @missing;
  }
}
