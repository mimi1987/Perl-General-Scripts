use strict;
use warnings;
use LWP::Simple;

$| = 1;

sub main {
	# Download a book from gutenber.org.
	print "Downloading...\n";
	my $oscar_wild = get 'http://www.gutenberg.org/cache/epub/844/pg844.txt' or die "Can't open URL.\n";
	print "Finished!\n";
	
	# Write the downloaded book into a file.
	open DOWNBOOK, ">:utf8", 'downbook.txt' or die "Can't open file to write.\n";
	print DOWNBOOK $oscar_wild;
	close DOWNBOOK;
	print "Finished: File written in downbook.txt\n";
	
	# Open the downloaded book.
	open BOOK, "<", 'downbook.txt' or die "Can't open the downloaded book.\n";
	
	# Open a file for writing the result.
	open OUTPUT, ">", 'text_analysis.txt';
	
	
	# Make my text analysis.
	my $line_counter = 0;
	while (my $line = <BOOK>) {
		if ($line =~ /money/i) {
			print OUTPUT $line;
			$line_counter += 1;
		}
	}
	
	# Close the files.
	close BOOK;
	close OUTPUT;
	
	# Show how much lines were written.
	print "Written: $line_counter lines of text.\n";
}

main();
