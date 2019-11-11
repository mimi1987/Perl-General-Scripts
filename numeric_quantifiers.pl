use strict;
use warnings;

sub main {
	
	# * zero or more of the preceding character, as many as possible.
	# + one or more of the preceding character, as many as possible.
	# *? zero or more of the preceding character, as few as possible.
	# +? one or more of the preceding character, as few as possible.
	# {5} as much as the numberr in the curly brackets of the preceding character.
	# {3,5} at least 3 and most 5 of the preceding character.
	# {3,} at least 3 with no upper bound of the preceding character.
	
	my $device_code = 'DE83340';
	
	if ($device_code =~ /(DE\d{3,5})/) {
		print "Matched: '$1'\n";
	}
	
}

main();
