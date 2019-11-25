use strict;
use warnings;

use Data::Dumper;

sub main {
	
	# File path of the CSV.
	my $csv_path = 'customers.csv';
	
	# Open the CSV file customers.csv.
	unless (open CSV, '<', $csv_path) {
		die "Can't open $csv_path!\n";
	}
	
	# Discard the first line in the CSV, i.e. the header.
	<CSV>;
	
	# Array to store the CSV data.
	my @data;
	
	# Read the records of the CSV and save each record in a hash.
	while (my $record = <CSV>) {
		chomp $record;
		my ($name, $payment, $date) = split /\s*,\s*/, $record;
		
		my %values = (
			name => $name,
			payment => $payment,
			date => $date,
		);
		
		push @data, \%values;
	}
	
	# Output the array @data with Dumper.
	print Dumper(@data);
	
	# Print all payments of the @data data structure.
	print "\nPayments: \n";
	print "-" x 20 . "\n";
	foreach my $data (@data) {
		print $data->{payment} . "\n";
	}
	
	# Print the name of the third record.
	print "\nName: " . $data[2]{name} . "\n";
	
	# Close the CSV filehandle.
	close CSV;
	
}

main();
