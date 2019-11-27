use strict;
use warnings;

use Data::Dumper;

sub main {
	
	# CSV file path.
	my $path = 'customers.csv';
	
	# Open the CSV file.
	unless (open CSV, '<', $path) {
		die "Can't open file: $!\n";
	}
	
	# Discard the header.
	<CSV>;
	
	# Read a record of the CSV file.
	START: while (my $record = <CSV>) {
		
		# Discard the newline.
		chomp $record;
		
		# Test if it's not an empty record.
		$record =~ /\S+/ or next;
		
		# Sanetizing the data.
		$record =~ s/\A\s*|\s*\Z//g; # Removing withspaces on beginning and end of record.
		$record =~ s/\$|approx\.//g; # Removing $ or 'approx.'.
		
		# Split the record by comma and store the values in an array.
		my @values = split /\s*,\s*/, $record;
		
		# Test if there are three values as expected.
		if (@values != 3) {
			print STDERR "Invalid record:\t$record\n";
			next;
		}
		
		# Test if a value is empty.
		foreach my $value (@values) {
			if ($value eq '') {
				print STDERR "Invalid value: $record\n";
				next START;
			}
		}
		
		# Store the values in a hash.
		my ($name, $payment, $date) = @values;
		my %data = (
			'Name' => $name,
			'Payment' => $payment,
			'Date' => $date,
		);
		
		# Output the data.
		foreach my $key (keys %data) {
			print "$key: '$data{$key}'\n";
		}
		
		
	}
	
	# Close the CSV file.
	close CSV;
}

main();
