#!/usr/bin/perl

# Aonother way to use Perl: $ perl -e 'perlcode...'

use strict;
use warnings;


$_= "yabba dabba doo";
$_ = "acca11bb";
# \g{1} and \g{-1} - it's a capture groups with back references and reletive back references respectively
my $pattern = '(.)(.)\g{2}\g{-2}11';
if (/$pattern/) {
	print "In string \'$_\' pattern \'$pattern\' WAS MATCHED!\n";
}
else{
	print "In string \'$_\' pattern \'$pattern\' WASN'T MATCHED!\n"
}

$_= 'http://yandex.ru/a.png';
if ( /\Ahttps?:/ ) {
print "Found a URL\n";
}

if ( /\.png\z/ ) {
print "Found a .png\n";
}

my $what = 'larry';
print "Print something or somethink starts with 'larry' word or print 'exit' to Exit from the while cycle:\n";
while (<>){
	if (/^($what)/){ #also we can use (/^$what/) and it's the same, but for more complex values of $what round brackets may be necessary  
		print "We saw $what in beginning of $_";
	}
	if (/exit/i){
		exit 3;
	}
}

