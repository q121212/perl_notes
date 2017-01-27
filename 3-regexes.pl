#!/usr/bin/perl

$_= "yabba dabba doo";
if (/ba/) {
	print "It matched!\n-----------\n"
}

sub regex_matches ($){
	my $pattern = @_[0];
	print "Input string for regex_tester:\n";
	while (<STDIN>) {
	chomp;
	if (/$pattern/){
		print "\tMatches\n";
		}
	else {
		print "\tDoesn't match\n"
		}
	}
}

sub regex_tester{
	my $pattern;
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

regex_tester;