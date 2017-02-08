#!/usr/bin/perl

# Another way to use Perl: $ perl -e 'perlcode...'

use strict;
use warnings;


$_= "yabba dabba doo";
$_ = "acca11bb";
# \g{1} and \g{-1} - it's a capture groups with back references and relative back references respectively
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
print "Print something or something starts with 'larry' word or print 'exit' to Exit from the while cycle:\n";
while (<>){
	if (/^($what)/){ #also we can use (/^$what/) and it's the same, but for more complex values of $what round brackets may be necessary  
		print "We saw $what in beginning of $_";
	}
	if (/exit/i){
		exit 3;
	}
}

# simple finding a TAGs and text in between ones (It works only for case one dimensional (linear) nesting)
my $html_code = '<html><head><title>Title of the page</title></head><body><p>Some text</body></html>';
sub linear_html_parser ($){
	my $text = $_[0];
	my $sub_text;
	if ($text =~ /(<(.+?)>)(.*)(<\/\g{2}>)/i){
		print "\n\n--------\nString for parsing: ", $text;
		print("\n\nOpen tag:\t\t\t", $1, "\ntext in between the tags:\t", $3, "\nClosed tag:\t\t\t", $4);
		$sub_text = $3; 
		}
	
	return $sub_text;
}
my $subtext = &linear_html_parser($html_code);
while ($subtext){
$subtext = &linear_html_parser($subtext);
}