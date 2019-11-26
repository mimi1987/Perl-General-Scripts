use strict;
use warnings;

use Data::Dumper;

sub main {
	
	# Open the CSV file customers.csv.
	my $path = 'customers.csv';
	open CSV, '<', $path or die "Can't open file: $!\n";
	
	# Get rid of the header.
	<CSV>;
	
	# Read the CSV file.
	START: while (my $line = <CSV>) {
		# Get rid of newlines.
		chomp $line;
		
		# Skip blank lines.
		$line =~ /\S+/ or next;
		
		# Split the record ($line) into its column values.
		my @values = split /\s*,\s*/, $line;
		
		# Name the values of @values.
		my ($name, $payment, $date) = @values;
		
		# Check if @values has less then 3 values.
		if (@values < 3) {
			print "Invalid data for: $line.\n";
			next;
		}
		
		# Check the values of @values if they are an empty string.
		foreach my $value (@values) {
			if ($value eq '') {
				print "Missing value in line: $line.\n";
				next START;
			}
		}
		
		# Display the data in the CSV file.
		my %data = (
			name => $name,
			payment => $payment,
			date => $date,
		);
		
		foreach my $key (keys %data) {
			print "$key: $data{$key}\n";
		}
	}
	
	
	# Close the CSV file.
	close CSV;
	
}

main();
