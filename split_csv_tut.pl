use strict;
use warnings;

$| = 1;

sub main {
	
	# Filepath of the CSV file.
	my $csv = 'customers.csv';
	
	# Open the CSV file or die if false.
	unless (open CSV, '<', $csv) {
		die "\nCan't open $csv!\n";
	}
	
	# Read the CSV file.
	while (my $line = <CSV>) {
		#print "This is a line: $line\n";
		
		# Split the lines by comma.
		my @values = split ',', $line;
		
		# Print a column names.
		print "$values[0]\n";
		
	}
	
	# Close the file handle.
	close CSV;
}

main();
