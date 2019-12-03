use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

sub main {
	
	# Save the command line options in a hash.
	my %opts;
	getopts 'af:r', \%opts;
	#print Dumper(%opts);
	
	unless (checkusage(\%opts)) {
		usage();
	}
	else {
		print "SUCCESS!\n";
	}
	
	
	# Define a sub that checks the command line options.
	sub checkusage {
		my $opts_ref = shift;
		my $a = $opts_ref->{'a'};
		my $f = $opts_ref->{'f'};
		my $r = $opts_ref->{'r'};
		
		# Check if $f and $r is defined;
		unless (defined($f) and defined($r)) {
			return 0;
		}
		
		# Check if option f has an xml file as an argument.
		unless ($f =~ /\.xml\Z/i) {
			print "Input file must have an extension .xml\n";
			return 0;
		}
		
		
		return 1;
	}
	
	# Define a sub that outputs usage information of the command line program.
	sub usage {
		print <<EOF;
Usage: perl <my_program.pl> <options> <file_name.xml>
SYN: Parese an xml file.
Example usage: perl parse.pl -r -f test.xml

EOF
	}
	
}

main();
