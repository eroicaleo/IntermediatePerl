#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;


my $ref_to_skipper_provisions = [qw(blue_shirt hat jacket preserver sunscreen)];
say "$ref_to_skipper_provisions->[0]";
say "@$ref_to_skipper_provisions";

my @skipper_with_name = ('Skipper', $ref_to_skipper_provisions);
@skipper_with_name = ('Skipper', [qw(blue_shirt hat jacket preserver sunscreen)]);

sub get_provision_list {
  return (
    ['The Skipper', [qw(blue_shirt hat jacket preserver sunscreen)]],
    ['The Professor', [qw(sunscreen water_bottle slide_rule batteries radio)]],
    ['Gilligan', [qw(red_shirt hat lucky_socks water_bottle)]]
  );
}

my @all_with_names = &get_provision_list;
foreach my $personRef (@all_with_names)  {
  say "$personRef->[0]: @{${$personRef}[1]}";
}
my @all_with_names = &get_provision_list;
foreach my $personRef (@all_with_names)  {
  say "$personRef->[0]: @{$personRef->[1]}";
}

my @crew = (
  +{
    name => 'Gillian',
    hat  => 'White',
    shirt => 'Red',
    position => 'First Mate',
  },
  +{
    name => 'Skipper',
    hat  => 'Black',
    shirt => 'Blue',
    position => 'Captain',
  },
);

foreach my $personRef (@crew) {
  foreach my $key (keys %$personRef) {
    say "$key => $personRef->{$key}";
  }
}
foreach my $personRef (@crew) {
  foreach my $key (keys %$personRef) {
    say "$key => $$personRef{$key}";
  }
}
foreach my $personRef (@crew) {
  foreach my $key (keys %$personRef) {
    say "$key => ${$personRef}{$key}";
  }
}
