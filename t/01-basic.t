
use strict;
use warnings;

use Test::More tests => 2;
use Test::Fatal;
use Cave::Wrapper;

my @commands;

is( exception {
    my $cave = Cave::Wrapper->new();

    @commands = $cave->print_commands(qw(--all));

}, undef, 'Call Succeeds' );

is_deeply([ grep { $_ =~ /^print-commands$/ } @commands ], ['print-commands'], 'print-commands shows print-commands');



