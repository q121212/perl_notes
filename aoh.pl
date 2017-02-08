#!/usr/bin/perl
use warnings;
use strict;


my @array_of_hashes = (
{name=> 'Bob',		number_before_sorting => '0',},
{name=> 'Yan',		number_before_sorting => '1',},
{name=> 'John', 	number_before_sorting => '2',},
{name=> 'Marley', 	number_before_sorting => '3',},
{name=> 'Erick', 	number_before_sorting => '4',},
{name=> 'Jane', 	number_before_sorting => '5',},
{name=> 'Ann',		number_before_sorting => '6',},
{name=> 'Buff', 	number_before_sorting => '7',}
);


print "Initial array of hashes:\n";
for my $i (0..$#array_of_hashes){
	for my $role (keys %{$array_of_hashes[$i]}){
		print  "$i, $role, $array_of_hashes[$i]{$role}\n"
	}
}

print "\nSorted by \'name\' array_of_hashes:\n";
my @sorted_array_of_hashes = sort { $a->{name} cmp $b->{name} } @array_of_hashes;
use Data::Dumper;
print Dumper(\@sorted_array_of_hashes);

# # Very simple AoA implementation:
# my @AoA;
# for my $x (1 .. 10) {
#         for my $y (1 .. 10) {
#             for my $z (1 .. 10) {
#                 $AoA[$x][$y][$z] =
#                     $x ** $y + $z;
#                 # print "$AoA[$x][$y][$z]\n";
#             }
#         }
#     }
