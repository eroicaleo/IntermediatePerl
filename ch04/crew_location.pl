#!/usr/bin/perl
use strict;
use warnings;

my %gilligan_info = (
	name     => 'Gilligan', 
	hat      => 'White', 
	shirt    => 'Red', 
	position => 'First Mate',
);
my %skipper_info = (
	name     => 'Skipper',
	hat      => 'Black',
	shirt    => 'Blue',
	position => 'Captain',
);
my %mrhowell_info = (
	name     => 'Mr. Howell',
	hat      => 'Black',
	shirt    => 'Blue',
	position => 'Guest',
);
my %mshowell_info = (
	name     => 'Ms. Howell',
	hat      => 'Black',
	shirt    => 'Blue',
	position => 'Guest',
);

my @crew = (\%gilligan_info, \%skipper_info, \%mrhowell_info, \%mshowell_info);

my $format = "%-15s %-7s %-7s %-15s\n"; 
printf $format, qw(Name Shirt Hat Position); 

foreach my $crewmember (@crew) {
	printf $format, 
		$crewmember->{'name'}, 
		$crewmember->{'shirt'}, 
		$crewmember->{'hat'}, 
		$crewmember->{'position'};
}

$format = "%s at %s\n";

foreach my $crewmember (@crew) {
  $crewmember->{'location'} = "Island";
  printf $format, $crewmember->{'name'}, $crewmember->{'location'};
}

foreach my $crewmember (@crew) {
  $crewmember->{'location'} = "Island Country Club" if ($crewmember->{'name'} =~ m/Howell/);
  printf $format, $crewmember->{'name'}, $crewmember->{'location'};
}
