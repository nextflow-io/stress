#!/usr/bin/perl
use warnings;
use strict;
 
my $file = $ARGV[0];
open(FH, '<', $file) or die $!;
my $counter = 0; 
while(<FH>){
   $counter+=length($_);
}
 
close(FH);
print($counter . "\n");
