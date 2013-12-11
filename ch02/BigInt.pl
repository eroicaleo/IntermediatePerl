#!/usr/local/bin/perl5.14

use 5.014;
use warnings;
use strict;

use Math::BigInt;

my $value = Math::BigInt->new(2);
$value->bpow(10);
say $value->bstr()
