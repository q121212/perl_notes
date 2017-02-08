#!/usr/bin/perl

use warnings;
use strict;

# $ perl -e '{$n=<STDIN>; print sqrt $n}' # using naked block ({}) like scope for vars;

# determining the type of value
chomp(my $var = (<>));
if ( ! defined $var) {
print "The value is undef.\n";
} elsif ($var =~ /^-?\d+\.?$/) {
print "The value is an integer.\n";
} elsif ($var =~ /^-?\d*\.\d+$/) {
print "The value is a _simple_ floating-point number.\n";
} elsif ($var eq '') {
print "The value is the empty string.\n";
} else {
print "The value is the string '$var'.\n";
}

# counting frequency of words
my @people = qw{ fred barney fred wilma dino barney fred pebbles };
my %count; 						# new empty hash
$count{$_}++ foreach @people; 	# creates new keys and values as needed for counting frequency of words
foreach my $key (keys %count){	# Easy way for hash printing!!!
print "$key => $count{$key}\n";
}

# the same way for hash printing, but a little more briefly and with using "new-fashioned" way of writing:
# print "$_ => $count{$_}\n" foreach (keys %count); 

