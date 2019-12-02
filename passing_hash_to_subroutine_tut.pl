use strict;
use warnings;

use Data::Dumper;
use Getopt::Std;

sub main {
	
	# Define a hash that holds the command line options.
	my %opts;
	getopts 'f:', \%opts;
	
	my $opts_ref = \%opts;
	
	print Dumper(%$opts_ref);

=begin comment_out
	if (!checkusage("Hello", 7)) {

		usage();
	}
=end comment_out
=cut

checkusage($opts_ref);

}

sub checkusage {
=begin comment_out
	my ($greeting, $number) = @_;
	print "$greeting number $number.\n";
=end comment_out
=cut
	my $opts_ref = shift;
	print $opts_ref->{'f'};
	
	return 1;
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
