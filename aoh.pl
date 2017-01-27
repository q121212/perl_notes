#!/usr/bin/perl
use warnings;
use strict;

'removing named hashes'

my @array_of_hash_ref = \(
{'name'=> 'Bob',		'number_before_sorting' => 0},
{'name'=> 'Yan',		'number_before_sorting' => 1},
{'name'=> 'John', 	'number_before_sorting' 	=> 2},
{'name'=> 'Marley', 	'number_before_sorting'	=> 3},
{'name'=> 'Erick', 	'number_before_sorting'		=> 4},
{'name'=> 'Jane', 	'number_before_sorting'		=> 5},
{'name'=> 'Ann',		'number_before_sorting'	=> 6},
{'name'=> 'Buff', 	'number_before_sorting'		=> 7}
);

my @sorted_array_of_hashes = sort { $a->{name} cmp $b->{name} } @array_of_hash_ref;
use Data::Dumper;
print Dumper(\@sorted_array_of_hashes);

foreach (0..$#array_of_hash_ref){
	printf $array_of_hash_ref[$_]
}
printf $array_of_hash_ref[0]{name};