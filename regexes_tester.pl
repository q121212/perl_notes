#!/usr/bin/perl

use strict;
use warnings;

sub regex_matches ($){
	my $pattern = $_[0];
	my $result;
	print "Input string for regex_tester:\n";
	while (<STDIN>) {
	chomp;
	if (/$pattern/){
		$result = "\tMatches\n";
		}
	else {
		$result = "\tDoesn't match\n"
		}
	print($result);
	logging($pattern, $_, $result);
	}
}

sub regex_tester{
	my $pattern;
	# Function read from ARGV argument as $pattern if it was passed or requires it to enter (in reversed order, of course)
	if (!@ARGV){
		print "Input pattern, please, and press ^D:\n";
		while (<STDIN>) {
			chomp;
			$pattern = $_;
		}
		regex_matches($pattern);
		}
	else{
		$pattern = join ' ', @ARGV;
		regex_matches($pattern);
	}
}


sub logging($$$){
	my ($log_regex_pattern, $log_regex_expression, $result) = @_; 
	# my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
	open F, '>>', 'log_for_regex_tester.log' || die "Can't open file: $!";
	print F "log_regex_pattern:\t". $log_regex_pattern. "\n";
	print F "log_regex_expression:\t". $log_regex_expression. "\n";
	print F "Result:\t". $result;
	print F "-------- ".`date +"%c"`."\n";
	close(F);
}

regex_tester;