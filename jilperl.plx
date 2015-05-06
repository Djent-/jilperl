#!/usr/bin/perl
#jilperl.plx
#s/my name/censorbar/
#CS 325 Spring 2015

use warnings;
use strict;

my @testdata = qw(1 13 999 1.1 0.0 .1 .999 a ab.c e 1e1 2E-2 1.0E+3);
#my $element;

for $_ (@testdata) {
	print $_, "\t", 
		m/[-+]? 		#positive or negative
		[0-9]* 			#whole number part
		\.? 			#optional decimal point
		[0-9]+ 			#fractional part
		([eE] 			#optional exponent part
		[-+]? 			#positive or negative
		[0-9]+ 			#number in exponent
		)?/x?"true\n":"false\n"
}

#Shortest program I've ever written for a CS course...
#Fits on 7 lines
#Also the first time I've put my Perl skills to good use
