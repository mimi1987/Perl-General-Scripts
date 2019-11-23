use strict;
use warnings;

use Data::Dumper;

sub main {
	
	# Create an array of animals.
	my @animals = qw(Fuchs Maus Hase Katze Hund);
	
	# Create another array, but this time of fruits.
	my @fruits = qw(Pfirsich Apfel Ananas Banane Orange);
	
	# Push the two arrays above to another array as a reference.
	my @values;
	push @values, \@animals;
	push @values, \@fruits;
	
	# Print the array values with Dumper.
	print Dumper(@values) . "\n";
	
	# A reference is a singel value.
	my $ref = \@animals;
	print $ref . "\n";
	
	# Dereference a singel value from a multidimensional array.
	print $values[0][2] . "\n";
	
	# Dereference a single value from an array reference.
	print $ref->[0] . "\n";
}

main();
