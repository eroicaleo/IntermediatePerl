#!/usr/local/bin/perl5.14

use 5.014;
use warnings;
use strict;

use File::Basename;
use File::Spec;

my $filespec = File::Spec->catfile("haha.txt");
say $filespec;
