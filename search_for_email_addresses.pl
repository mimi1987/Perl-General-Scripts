# Just a TUT exercise!

use strict;
use warnings;

$| = 1;

sub main {
	# holds some email addresses and other data.
	my @email_addresses = ('michael@gmail.com', 'markus.mustermann@aon.at', '12234.com', 'Hello World!', 'sabine.musterfrau@meinewebsite.eu');
	
	# find possible valid email addresses.
	foreach my $email_address (@email_addresses) {
		if ($email_address =~ /\w+\@\w+\.\w+/i) {
			print "Found an email address:\t\t+++ $email_address +++\n";
		}
		else {
			print "That's not an email address:\t--- $email_address ---\n";
		}
	}
	
}

main();
