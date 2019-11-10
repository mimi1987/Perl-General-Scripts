use strict;
use warnings;

sub main {
	# Open a file to read its content.
	my $file = 'downbook.txt';
	if (-f $file) { # -f: file existence operator.
		open FH, '<:encoding(utf8)', $file or die "Can't open file: $file.\n";
		print "File opened.\n";
	}
	
	# Read the file by line.
	print "Read the file...\n";
	while (my $line = <FH>) {
		if ($line =~ /(I..a..)(....)/ig) {
			print "First group: $1; Second group: $2\n";
		}
	}
	
	# Close all file handles.
	close FH;
	print "Program finished!\n";
}
main();
