use strict;
use warnings;

$| = 1;

sub main {
	my $file = 'C:\Users\mmigs\eclipse-workspace\TUT3\logo.png';
	if (-f $file) {
		print "Found file: $file\n";
	}
	else {
		print "Found not file: $file\n";
	}
}

sub main2 {
	my @files = (
		'C:\Users\mmigs\eclipse-workspace\TUT3\logo.png',
		'C:\Users\mmigs\eclipse-workspace\TUT3\home.html',
		'C:\Users\mmigs\eclipse-workspace\TUT3\missing.doc',
	);
	
	foreach my $file (@files) {
		if (-f $file) {
			print "Found file: $file\n";
		}
		else {
			print "Found not file: $file\n";
		}
	}
}

main2();
