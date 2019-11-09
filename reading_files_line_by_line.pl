use strict;
use warnings;

$| = 1;

sub main {
	my $file = 'D:\Skripte\Learn Perl 5 By Doing It\oscar_wild.txt';
	
	open OSCARWILDE, "<", $file or die "Input file $file not found.\n";
	
	while (my $line = <OSCARWILDE>) {
		if ($line =~ /michael/i) {
			print $line;
		}
	}
	
	close OSCARWILDE;
}

main();
