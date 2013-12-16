#!/usr/local/bin/perl5.14
use strict;
use warnings;
use 5.014;

my @skipper   = qw(blue_shirt hat jacket preserver sunscreen);
my @professor = qw(sunscreen water_bottle slide_rule batteries radio);
my @gilligan  = qw(red_shirt hat lucky_socks water_bottle);

my %all = (
  Gilligan  => \@gilligan, 
  Skipper   => \@skipper, 
  Professor => \@professor,
);

check_items_for_all(\%all);

sub check_items_for_all {
  my $hash_ref = shift;
  foreach my $key (keys %$hash_ref) {
    &check_required_item($key, $hash_ref->{$key})
  }
  die "You need to fill in check_items_for_all";
}

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
