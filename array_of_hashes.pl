use strict;
use warnings;

use Data::Dumper;

sub main {
	
	# Create a hash.
	my %hash1 = (
		cat => "meat",
		fish => "worms",
		bird => "seeds",
	);
	
	# Create an array and push an array on it.
	my @array = ();
	push @array, %hash1;
	print Dumper(@array); # Key/Values are not pairs but single elements of the array.
	
	# Push a hash reference if you want to have a hass as an array element.
	push @array, \%hash1;
	print Dumper(@array);
	
	# Now you can access a hash value with its corresponding key.
	print $array[6]{bird} . "\n";
}

main();
