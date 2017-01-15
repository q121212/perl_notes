#!/usr/bin/perl

use warnings;
# use feature qw(signatures);
# no warnings qw(experimental::signatures);
# use diagnostics;
use strict;

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

my @fred = qw(eating rocks is wrong);
my $fred = "right";
print "this is $fred[3]\n";

print "this is ${fred}[3]\n";
print "this is $fred"."[3]\n";
print "this is $fred\[3]\n";

my @rocks = qw/bedrock slate lava/;
foreach my $rock(@rocks) {
	$rock = "\t$rock";
	$rock .= "\n";
}
print "The rocks are:\n", @rocks;

my @fred = 6..10;
print @fred;
my $q=reverse(@fred);
@fred = reverse(@fred);
print @fred."\n";

#### each using
push(@rocks, "granite");
# print join " ", @rocks;
while (my ($index, $value) = each @rocks){
	print "$index:", $value,"\n";
}

foreach my $index (0 .. $#rocks){
	print "$index: $rocks[$index]\n";
}

my @q = qw "a s d f";

$q = @q;
print 42 + @q;
print "42" + @q;
my @w = sort @q;
print @w;


($wilma, my $betty) = 'something';
print $wilma, "\n", $betty;

print reverse qw"asd alka la";
@ fred - 6*7;
print @fred;
my @barney = ("hello", ' ', 'world');
print "\n\n",$#barney;
print join "\t", @barney;

print "\ni have sentence: ", "\"", @barney, "\"", " with len: ", scalar @barney, " :that's was all of it!\n";

my @list = qw\fred betty barney dino wilma pebbles bamm-bamm\;
print "Write a few lines and press ^D (if you use Windows then press ^Z) for stop writing and continue my script!\n";
chomp(my @lines = <STDIN>);
print "\nheeey!\n";
say "You writed the next text:\n", reverse @lines;

foreach my $index (0..$#lines){
	print $list[scalar $lines[$index]]."\n";
}

print join " ", sort @lines;

# $n =0;
sub marine {
	state $n+=1;
	print "\nHello, sailor number $n!\n";
	print 3+7,"\n";
	# wantarray;
}

$x = &marine;
&marine;
print $x."\n";

print &marine;

sub myown ($first, $second) {
	my ($first, $second) = @_;
	if ($first gt $second){$first} else {$second}
}

print "\n\t",&myown(1,2,3);


sub PI () {	" ". 3.1415926 }

print &PI;

sub total (@){
	my $total = 0;
	foreach (@_){
		$total+=$_
	}
	"\n".$total;
}


print &total();
print &total(1);
print &total(1,2,3);
print &total(1,2,3, 1..100);

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";

print "\nSum 1..1000 is:", &total(1..1000);

sub average(@){
	my $summa = 0;
	foreach (@_){
		$summa += $_;
	}
	$summa/@_#
}

sub above_average(@){
	my @list = (); 
	state $num_of_average = &average(@_);
	print "\nAverage for: ", @_, " is: ", $num_of_average, "\n";
	foreach (@_){
		if ($_ > $num_of_average) {
			push(@list, $_)
		}
	}
	print "Above an average numbers is the next: ", join(", ", @list), "\n"; 
	@list;
}

above_average(1,2,3,4);