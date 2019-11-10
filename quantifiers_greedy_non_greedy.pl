use strict;
use warnings;

sub main {
	# Open a book from gutenberg.org saved on disk.
	my $book = 'downbook.txt';
	if (-f $book) {
		open BOOK, '<:utf8', $book;
	}
	else {
		die "Can't open book: $book.\n";
	}
	
	# Readlines from the book.
	while (my $line = <BOOK>) {
		# Use regex quantifiers greedy and non-greedy.
		if ($line =~ /(you'l+)/i) { # ? makes a quantifier non-greedy.
			print $line;
		}
	}
	
	# Close the book.
	close BOOK;
}

main();
