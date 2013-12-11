#!/usr/local/bin/perl5.14

use warnings;
use strict;
use 5.014;

foreach my $operator (qw(+ - *)) {
  my $results = eval "1 $operator 2";
  say "$results";
}

say "The input separator is '$/'";

my $file_contents = do {
  local $/;
  local @ARGV = ("haha.txt");
  <>
};

say $file_contents;
