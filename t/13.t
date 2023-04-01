#!/usr/bin/perl

use Test::More tests => 1;
require './t/auxfunctions.pl';

my $com = "perl -Mblib ./ngrams.pl --n=10 --orderby=frequency --type=character".
                 " --normalize --onlyfirst=100 --spartan t/12.in";
my $out = scalar(`$com`);

#putfile('t/13.out-new', $out);
&isn('t/13.out', $out);
