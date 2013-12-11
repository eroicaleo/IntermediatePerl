#!/usr/local/bin/perl5.14

use 5.014;
use warnings;
use strict;

use Spreadsheet::WriteExcel;
use Module::CoreList;

my $workbook = Spreadsheet::WriteExcel->new("perl.xls");

my $worksheet = $workbook->add_worksheet();
$worksheet->write('A1', 'Hello Excel!');

print $Module::CoreList::version{5.014}{CPAN}, "\n";
