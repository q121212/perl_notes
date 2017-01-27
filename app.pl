#!/usr/bin/perl

use warnings;
use strict;

foreach my $file (@ARGV){
	open F, $file || die "Can't be open file: $!";
		printf("\n\tContent of the next \'$file\'' file:");
		foreach (<F>){
		chomp;
		print(' |_ '.$_, ' _| ');
	}
}
