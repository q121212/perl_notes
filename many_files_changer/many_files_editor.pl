#!/usr/bin/perl -w

# script for updating many files
use strict;
chomp(my $date = `date`);
$^I = ".bak"; # save (backup) every opened file to *.bak
while (<>) {
s/\AAuthor:.*/Author: Randal L. Schwartz/;
s/\APhone:.*\n//;
s/\ADate:.*/Date: $date/;
print;
}

# or analogue for changing only Author's name in one line:
# $ perl -p -i.bak -w -e 's/Randall/Randal/g' fred*.dat

# in this case:
# -p option tells Perl to write a program; it looks something like this:
# while (<>) {
# print;
# }

# could use -n instead -p; that leaves out the automatic print
# statement, so you can print only what you wish

# -w — it turns on warnings.
# -e option says “executable code follows.”

# The last command-line parameter is fred*.dat , which says that @ARGV should hold
# the list of filenames that match that filename pattern.