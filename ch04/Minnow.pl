#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;


my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
my @professor = qw(sunscreen water_bottle slide_rule batteries radio);

&check_required_item('skipper', \@skipper);
&check_required_item('gilligan', \@gilligan);
&check_required_item('professor', \@professor);

my $ref_to_skipper = \@skipper;
my $second_ref_to_skipper = $ref_to_skipper;

if ($ref_to_skipper == $second_ref_to_skipper) {
  print "They are identical reference!\n";
}
say $ref_to_skipper;
say \$ref_to_skipper;
say $second_ref_to_skipper;
say \$second_ref_to_skipper;

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
