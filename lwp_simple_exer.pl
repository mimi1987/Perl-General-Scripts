use strict;
use warnings;

use LWP::Simple;

sub main {
	print "Downloading...\n";
	# print get("http://www.caveofprogramming.com");
	# getstore("http://www.caveofprogramming.com", "home.html");
	my $code = getstore("https://dict.leo.org/img/leo/160x60/schriftzug-fc9ef08f.png", "logo.png");
	print "\nFinished\n";
	if ($code == 200) {
		print "Successfull\n";
	}
	else {
		print "Failed\n";
	}
}

main();
