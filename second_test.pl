use strict;
use warnings;

use Data::Dumper;

$| = 1;

sub main {
	
	# File path of the CSV.
	my $path = 'customers.csv';
	
	# Open the CSV file.
	unless (open CSV, '<', $path) {
		die "Can't open file: $path.\n";
	}
	
	# Store the CSV header.
	my $header = <CSV>;
	chomp $header;
	my @headers = split /\s*,\s*/, $header;
	
	
	# Array to store in hashes.
	my @data;
	
	# Read the CSV file and output it.
	RECORD: while (my $record = <CSV>) {
		chomp $record;
		
		# Skip any blank lines.
		$record =~ /\S+/ or next;
		
		# Get rid of spaces at beginning or end or befor/after commas.
		$record =~ s/\A\s*|\s*\Z//g;
		
		# Save and name the single values of a record.
		my @values = split /\s*,\s*/, $record;
		if (@values != 3) {
			print STDERR "Invalid line: $record\n";
			next;
		}
		
		# Skip if $name or $payment or $date is empty.
		foreach my $value (@values) {
			if ($value eq '') {
				print STDERR "Invalid value at: $record\n";
				next RECORD;
			}
		}
		
		# Get rid of '$' and 'approx' in values.
		foreach my $value (@values) {
			$value =~ s/\$|approx\.//g;
		}
		
		# Declare a hahs to store the values of a record.
		my %data;
		
		for (my $i = 0; $i < @headers; $i++) {
			$data{$headers[$i]} = $values[$i];
		}
		
		# Add %data to @data.
		push @data, \%data;
	}
	
	# Sum up the payment.
	my $total_payments = 0;
	foreach my $hash (@data) {
		$total_payments += $hash->{'Payment'};
	}
	
	# Output the total_payments.
	print "Sales are: \$${total_payments},--\n";
	
	# Close the CSV file.
	close CSV;
	
	
	
	# Sum up the payments.
		
}

main();
