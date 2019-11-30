use strict;
use warnings;

use LWP::Simple;

$| = 1;

sub main {
	
	# Save the website addres which should be scraped.
	my $url = 'https://caveofprogramming.com/';
	
	# Get the website.
	my $website = get $url;
	
	unless(defined($website)) {
		die "Can't open website: $url\n";
	}
	
	# Search for img tags.
	if ($website =~ m~(<img.*>)~ig) {
		print $1, "\n";
	}
	else {
		print "Nothing found!\n";
	}
}

main();
