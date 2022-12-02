#!/usr/bin/env perl

use 5.030;
use strict;
use warnings;

open my $fh, '<', 'input' or die "Failed to open input file: $!";
my $max  = 0;
my $deer = 0;
while (defined(my $l = readline $fh)) {
    chomp $l;
    if (length $l) {
        $deer += $l;
    }
    else {
        $max < $deer and $max = $deer;
        $deer = 0;
    }
}
say $max;