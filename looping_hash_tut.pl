use strict;
use warnings;

use Data::Dumper;

$| = 1;

sub main {
	
	# Define a hash which has fruit name as key and amount as value.
	my %fruits = (
		apple => 3,
		orange => 5,
		mango => 1,
	);
	
	# Iterate over a hash with an array and foreach.
	print "Keys stored in an array which is then used in a foreach loop: \n";
	my @keys = keys %fruits;
	foreach my $key (@keys) {
		print "$key: $fruits{$key}\n";
	}
	
	print "\nOr keys can be used directly in the foreach: \n";
	foreach my $key (keys %fruits) {
		print "$key: $fruits{$key}\n";
	}
	
	print "\nOutput the hash with keys sorted.\n";
	foreach (sort keys %fruits) {
		print "$_: $fruits{$_}\n";
	}
	
	# Looping over a hash with each and a while loop.
	print "\nHash printed with each and while.\n";
	while (my($key, $value) = each %fruits) {
		print "$key: $value\n";
	}
	
	# Hash printed with Data Dumper.
	print "\nHash printed with Data Dumper:\n";
	print Dumper(%fruits);
}

main();
