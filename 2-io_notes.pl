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


# if You use like an argument in command line hyphen (-), then input would be coming from standart input!
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