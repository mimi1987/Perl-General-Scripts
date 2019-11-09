use strict;
use warnings;

sub main {
	# Open a book from gutenberg.org stored on disk for reading.
	my $book = 'D:\Skripte\Learn Perl 5 By Doing It\oscar_wild.txt';
	open OSCARWILD, "<", $book;
	
	# Open/Create a new file to write/change some lines of the book.
	open OUTPUT, ">", "text analysis.txt";
	
	# Find the patterns and make changes.
	while (my $line = <OSCARWILD>) {
		if ($line =~ /\bmichael\b/i) {
			$line =~ s/\bmichael\b/Michael Migsch/ig;
			print OUTPUT $line;
		}
	}
	
	# Close the files
	close OSCARWILD;
	close OUTPUT;
}

main();
