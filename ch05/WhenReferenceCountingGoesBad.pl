#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;


my @data1 = qw(one won);
my @data2 = qw(two too to);

push @data1, \@data2;
push @data2, \@data1;

say "@data1", "@{$data2[3]}";


