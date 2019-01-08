#!/usr/bin/env perl

use strict; use warnings;

my $file = $ARGV[0];
my $max = $ARGV[1];
my $count = 0;

open(my $fh, '>', $file);
while ($count < $max) {
    printf $fh "%8X", rand(0xffffffff);
    $count+=$count+8
}

close $fh;
