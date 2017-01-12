#!/usr/bin/perl

use warnings;
# use diagnostics;

use v5.24;
use utf8;

say 'perl';
# my @lines = `perldoc -u -f atan2`;
# # my @lines = `ls -lah`;
# foreach (@lines){
# 	s/\w<([^>]+)>/\U$1/g;
# 	print;
# }

say 3.1415x2,2;
say 4/3;
say 0377, "\n", 0xFF, "\n", 0b1111_1111, "\n", .255e3, "\n", 0x1f.0p3, "\n", 0x1f.0p1020, "\n", 10**3, "\n", '☃★๛ .';

say 'd
d

\\dd';

say "\x{2668}", "\cC", "\N{SNOWMAN}";

say 2/'2hi';
my $zcaa = 1;
print "\$zcaa: ". $zcaa, !! '10', "\n";
# `chromium-browser`;
my $j = 'sd';
print "$j$zcaa";

say "\nPrint something: ";
my $len_of_chomp = chomp(my $line = <STDIN>);

if ($line eq "") {
	print "That was just a blank line!\n";
}
else {
	print "That line of input was: $line\n";
}

say "\$len_of_chomp: ", $len_of_chomp;

my $x=0;
while ($x<10){
	print($x++);
	$x++;
	
}
print my $e;

print my $line=<STDIN>*2*3.14;

foreach ((1.1..2.5)){
	say;

}

my @x=(1..100);
say $#x; # $# is last number of element for array
foreach (@x) {
	print;
}

print join "\t",(1,2,5..10,111);

my ($a,$b,$c) = (1,2,3);
print "\n",join " ", $a,$b,$c;

say join " ", my ($fred, $barney) = qw< flintstone rubble slate granite >; # two ignored items
say join " ", my ($wilma, $dino) = qw[flintstone]; # $dino gets undef
my @giant = 1..1e5;
my @the_more_big = (@giant, undef, @giant);
my @arr = ('','','','');
say $#arr;