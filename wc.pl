#!/usr/bin/perl
use warnings;
use strict;

open F, $ARGV[0] || die $!;
my ($lines, $words);
while (<F>){
	foreach (split()){
		$words++ if $_;
	}
	$lines++;
}
printf "%8u %8u", $lines, $words;
close(F);
