#!/usr/bin/perl
use warnings;
use strict;

open F, $ARGV[0] || die $!;
my ($lines, $words, @words) = (0, 0, ());;
while (<F>){
	# print;
	push @words, split(chomp());
	# printf "\'%s\'", scalar(@words);
	# @words = grep {$_ ne ''} @words;
	$lines++;
	$words += $#words;
}
printf "%8u %8u", $lines, $words+1;
close(F);
# if (chomp($lines[$#lines])){
# 	push @lines, "\n";
# }
# my @words = map {split} @lines;
# printf "%8d %8d\n", scalar(@lines), scalar(@words);

# print "Strings (each is on a new line):\n";
# printf "".("%s" x @lines), @lines;

# if (chomp($lines[$#lines])){
#   print "\n";
# }
# print "----\nWords (between \' signs):\n";
# foreach my $index (0..$#words){
# 	print "Word No $index: \'".$words[$index]."\'\n";
# }

