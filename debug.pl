#!/usr/bin/perl

use strict;
use warnings;


# perl -pl00120073 -e ''
# perl -MO=Deparse -pl00730012 -e ''

# B::Deparse keys:
# -l - comment and strings from source file
# -p - priority of commands
# -q - extract interpolated strings (strings with "") 

# use B::Deparse;
# sub func {
# 	print "Hi!"
# }

# my @deparse = B::Deparse->new("-p", "-sC");
# my $body = @deparse->coderef2text(\&func);
# print $body;

# use Data::Dumper;
# my $var = [{a=>1, b=>2}, {c=>3, d=>4}];
# print Dumper($var);

# Data::Printer
# use DDP;
# my $var2 = {a=>1,b=>2,c=>[1,2,3]};
# p $var2;

# debug mode
# perl -d myscript.pl  