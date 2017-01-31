#!/usr/bin/perl

use strict;
use warnings;

# Authorization system have restriction: login should be
# starts with latin letter, contain latin letters, numbers,
# dots and minuses and ends with letter or number only. 
# Minimal length of login is 1 symbol, maximal is 20. Write
# code that checks the matching of the input string for 
# that rule. Come up with a few ways to solve problems and
# compare them.

sub advanced_regex_tester ($) {
	my $login =$_[0];
	my @result;

	if ($login =~ /(?<start>\A.{1})(?:(?<content>.{0,18})(?<end>.\Z))?/){
		my ($start, $content, $end) = ($+{start}, $+{content}, $+{end});
		#FOR DEBUG:
		# print "----\nStart: \t \'$start\'\nContent: \'$content\'\nEnd: \t \'$end\'\n";
		if ($start ne ''){
			if ($start =~ /[a-z]/i){}
			else {
				push(@result, 'start');
			}
		}
		else {
			if (!$end){
				push(@result,'out of range');
			}
			else{}
		}
		if ($end) {
			if ($end =~ /[a-z\d]/){
			}
			else {
				push(@result, 'end');
			}
			if ($content) {
				if ($content =~ /\A[a-z.\d-]*\Z/){
				}
				else {
					push(@result, 'content');
				}
			}
		}
		else {
			if ($login =~ /.{21,}/) {
				push(@result, 'out of range (more than 20 characters)');
			}
		}
	}
	else {
		push(@result, 'out of range (less than 1 character)');
	}
	# for debug (detailed response about login's inadequacy) 
	if (@result){
			print "\'$login\': \t" . join(', ', @result) . "\n\n";
		}
		else {
			print "\'$login\' \tis correct login!\n\n";
		}
	return @result
}

my @logins_list = ("", "0", "a", "1hj", "abcdefghijklmnopqrstuvwxyz", "jakjjk-dsf.4", "ksfdhjk-dfs-#",
"twenty-symbols-.-.--", "twenty-one-symbols-.-", "twenty-symbols-.-.20", "twenty-one-symbols.21",
"twenty-symbols-.-.-\n", "\njkad", "sdfnjksdoШi", "*sdfnроыавпыпрыорраывпjksdoШiЁ", "///////////////// //", "jsdkhf-.jdsklf");

foreach (@logins_list) {
	# print "Login: \'$_\'\n";
	advanced_regex_tester($_);
}
# while (<>){
# 	chomp;
	# advanced_regex_tester($_);
# };


