use strict;
use warnings;

$| = 1;

sub main {
	my $text = "The code for this device is GP8761.";
	
	if ($text =~ /(\w{2}\d{4})/) {
		print "Device Code: +++ $1 +++\n";
	}
}

main();
