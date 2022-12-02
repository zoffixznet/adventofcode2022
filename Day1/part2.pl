#!/usr/bin/env perl

use 5.030;
use strict;
use warnings;
use Mojo::Collection qw/c/;

{
    package Deer;
    use Mojo::Base -base;
    use Mojo::Collection qw/c/;
    has guts => sub { c };
    sub total { shift->guts->reduce(sub { $a + $b }) }
}

open my $fh, '<', 'input' or die "Failed to open input file: $!";
say c(<$fh>)->map(sub {
    state $d = Deer->new;
    chomp;
    if (length) {
        push $d->guts->@*, $_;
        return;
    }
    my $deer = $d;
    $d = Deer->new;
    return $deer;
})->map('total')->sort(sub { $b <=> $a })->head(3)->reduce(sub { $a + $b });
