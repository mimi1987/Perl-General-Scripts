use strict;
use warnings;

use Data::Dumper;

sub main {
	
	# CSV file path.
	my $path = 'customers.csv';
	
	# Open the CSV file.
	unless (open CSV, '<', $path) {
		die "\nCan't open $path!\n";
	}
	
	# Create an array to push on all the lines of the CSV file.
	my @lines = ();
	
	# Read the CSV line by line.
	while (my $line = <CSV>) {
		chomp $line;
		push @lines, $line;
	}
	
	# Close the CSV file.
	close CSV;
	
	# Display the content of the array.
	foreach my $line (@lines) {
		print $line . "\n";
	}
}

main();
