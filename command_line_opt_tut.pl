use strict;
use warnings;
use Data::Dumper;

use Getopt::Std;

$| = 1;

sub main {
	
	# Examples of getting and using command line arguments.
	#print Dumper(@ARGV), "\n";
	
	#print "The first command line argument is: $ARGV[0]\n";
	
	q# -- Comment out block -- # // q#
	foreach (@ARGV) {
		print "Processing XML-File: $_\n";
	}
	#;
	
	
	# Using command line arguments with Getopt::Std.
	my %opts;
	getopts 'hf:', \%opts;
	
	q# -- Commented out # // q#
	print "Content of \%opts is:\n";
	print Dumper(%opts);
	#;
	
	print "File is: $opts{'f'}\n";
}

main();
