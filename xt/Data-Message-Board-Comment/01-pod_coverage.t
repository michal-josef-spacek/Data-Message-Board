use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Data::Message::Board::Comment', 'Data::Message::Board::Comment is covered.');
