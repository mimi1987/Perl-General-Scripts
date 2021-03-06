use strict;
use warnings;

use Data::Dumper;

$| = 1;

sub main {
	# Path of the CSV file.
	my $csv_file_path = 'customers.csv';
	
	# Open the CSV file.
	unless (open CSV, "<", $csv_file_path) {
		die "\nCan't open $csv_file_path\n";
	}
	
	# Read the CSV file line by line.
	while (my $line = <CSV>) {
		
		# Get rid of the newline of each line.
		chomp $line;
		
		# Split the lines by a comma also with possible spaces.
		my @values = split /\s*,\s*/, $line;
		
		# Concatenate the array values by a pipe.
		#print join '|', @values;
		
		# Show the content of the array with Dumper.
		print Dumper(@values);
	}
	
	# Close the CSV file.
	close CSV;
	
}

main();
