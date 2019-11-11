use strict;
use warnings;

sub main {
	
	# \d digit
	# \s space
	# \S non-space
	# \w alphanumeric
	
	my $text = 'I_am_117_years_old_tomorrow.';
	
	if ($text =~ /(\w+)/) {
		print "Matched: '$1'\n";
	} 
}

main(); 
