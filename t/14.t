#!/usr/bin/perl

use Test::More tests => 1;
require 't/auxfunctions.pl';

my $com = "$^X  -Mblib ./ngrams.pl --n=3 --orderby=frequency --type=byte".
                 " t/14.in";
my $out = scalar(`$com`);

# putfile('t/14.out-new', $out);
&isn('t/14.out', $out);
