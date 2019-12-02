use strict;
use warnings;

use Data::Dumper;
use Getopt::Std;

sub main {
	
	# Define a hash that holds the command line options.
	my %opts;
	getopts 'f:', \%opts;
	
	if (!checkusage("Hello", 7)) {
		usage();
	}
}

sub checkusage {
	my ($greeting, $number) = @_;
	print "$greeting number $number.\n";
	
	return 0;
}

sub usage {
	print <<EOF;
usage: perl xml_parser.pl <options>
	-f <file name> specific XML file name to parse
example usage:
	perl xml_parser.pl wilma.xml
			
EOF
}

main();
