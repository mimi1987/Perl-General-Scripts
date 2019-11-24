use strict;
use warnings;

use Data::Dumper;

sub main {
	
	# Declare a hash which contains months.
	my %months = (
		Jan => 1,
		Feb => 2,
		Mar => 3,
		Apr => 4,
	);
	
	# Declare a hash which contains weekdays.
	my %days = (
		Mon => 1,
		Tue => 2,
		Wen => 3,
		Thu => 4,
		Fri => 5,
		Sat => 6,
		Sun => 7,
	);
	
	# Acces hash values.
	print "Feb is the " . $months{Feb} . " month of the year.\n";
	print "Friday is the $days{Fri} day in a week.\n";
	
	# Iterate over hashes with an array.
	print "\nIterate over a hash with an array.\n";
	my @months = keys %months;
	
	foreach my $month (@months) {
		print "$month: $months{$month}.\n";
	}
	
	# Iterate over a hash with each.
	print "\nIterate over a hash with each.\n";
	while (my($key, $value) = each %days) {
		print "$key: $value\n";
	}
	
	# Show the content of a hash with Dumper.
	print "\n";
	print Dumper(%months);
	
}

main();
