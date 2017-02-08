#!/usr/bin/perl

use warnings;
use strict;

foreach my $file (@ARGV){
	open F, $file || die "Can't be open file: $!";
		printf("\tContent of the \'$file\' file where each line is framed by |_\' \'_|:");
		foreach (<F>){
		chomp;
		print("\n |_ '.$_, ' _| ");
	}
}
