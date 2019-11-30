use strict;
use warnings;

use LWP::Simple;
use Data::Dumper;

$| = 1;

sub main {
	
	# Website to scrape.
	my $url = 'https://caveofprogramming.com/';
	
	# Download the website.
	my $website = get $url;
	unless(defined $website) {
		die "Can't open website: $url\n";
	}
	
	# Check for classes and store the class names.
	my @classes = $website =~ m{class\s*=\s*"([^"'<>]+?)"}ig;
	
	# Iterate over the matches and output it.
	foreach my $class (@classes) {
		if (@classes < 0) {
			print "No matches found!\n";
		}
		else {
			print "$class\n";
		}
	}
}

main();
