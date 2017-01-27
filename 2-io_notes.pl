#!/usr/bin/perl

use warnings;
use feature qw(signatures);
no warnings qw(experimental::signatures);
# use diagnostics;
use strict;

use v5.24;
use utf8;


print "Diamond operator (<>) In While loop:\n";
### <STDIN> is a line-input OPERATOR around a filehandle
while (defined(my $line = <STDIN>)) {
print "I saw $line";
}

print "A more simple while loop with <>:\n";
# the same code:
while (<STDIN>){
	print "I saw $_";
}

print "<> In foreach loop:\n";
# or the code for take all strings together like one array element:
foreach (<STDIN>){
	print "I saw $_";
}


# If hypрen (-) used as an argument in command line, then input would be coming from standart input!
# for example: $ this_script.pl file1 - file2
# this means  this_script.pl will processed first file1, then - standart input (until it's completion via ^D in linux, ^Z bin Windows), then - file2.
print "<> for arguments selection in command line";
while (defined(my $line = <>)){
	chomp($line);
	print "It was $line that I saw!\n"
}

print "more simple code with <>\n";
# the same code:
while (<>){
	chomp;
	print "It was $_ that  I saw!\n";
}

print "<<>> is Double diamond (v.5.22 or later). It's prevent runs external programs from the script (for example, if command line args have pipe lines '|')\n";

print @ARGV;
my @ar = qw/fred barney betty/;

print "\nVariable \$\" have the next content (it's between two \' sings): \'".$"."\'\n";
print @ar;
print "\n@ar";
$" = "\n";
print "\n\nNow I changed it and variable \$\" have the next content (it's between two \' sings): \'".$"."\'\n";

print "\n@ar";

print "\n".'Standart Unix tools have been implemented in Perl in http://www.perlpowertools.com/'. "\nFor example, cat:\n";

print <>; # implementation of /bin/cat
print "Also sort:\n";
print sort <>; # implementation of /bin/sort

print (2+3)*234;

printf "%6d\n", 42; # output like ````42 (the ` symbol stands for a space)
printf "%2d\n", 2e3 + 1.95; # 2001
printf "%*s", 10, "wilma"; # looks like `````wilma
#You can use two * to get the total width and the number of decimal places to format a float:
printf "%*.*f", 6, 2, 3.1415926; # looks like ```3.14
printf "%*.*f", 6, 3, 3.1415926; # looks like ``3.142

my @items = qw( wilma dino pebbles );
my $format = "\nThe items are:\n" . ("%10s\n" x @items);
## print "the format is >>$format<<\n"; # for debugging
printf $format, @items;

# or the same in one-line mode:
printf "\nThe items are:\n".("%10s\n" x @items), @items;

# sub tac (@) {
# 	foreach my $i (0..ARGV[-1]) {
# 		printf $i;
# 	}
# }

# tac qw/a1 b2 c3 d4 e5 f6 g7/;