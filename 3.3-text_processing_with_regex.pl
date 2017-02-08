#!/usr/bin/perl

use warnings;
use strict;

# Substitutions with s///
$_ = "a girl was born!";
s/girl/boy/;
print $_."\n";
s/(\w+) (\w+)/$2, $1/;
print $_."\n";

#/g - global mark
$_ = 'bag, green bag';
print $_."\n";
s{bag}#box#g; # different delimiters can be used
printf $_."\n";

# split with pattern
my $fields = 'fisrt second;third, etc.';
my @splitted = split /\W[\s]*/, $fields;
print "Sentence \'$fields\' was splitted by \'$&\' delimiter:\n@splitted";

