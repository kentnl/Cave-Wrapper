
use strict;
use warnings;

use Test::More tests => 1;

{
  open my $fh, '-|', 'cave', '--help'
    or BAIL_OUT('Cannot call cave --help, you probably lack the program required to use this module');
  my @lines = <$fh>;
  close $fh;
}
{
  open my $fh, '-|', 'cave', '--version'
    or BAIL_OUT('Cannot call cave --version, you probably lack the program required to use this module');
  my @lines = <$fh>;
  close $fh;
  diag(@lines);
}
{
  open my $fh, '-|', 'cave', 'print-commands', '--all'
    or BAIL_OUT('Cannot call cave print-commands --all, you probably lack a new enough copy of paluids');
  my @lines = <$fh>;
  close $fh;
}

pass("All cave calls execute successfully");

