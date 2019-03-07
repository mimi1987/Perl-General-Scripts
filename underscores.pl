use strict;
use warnings;
use v5.14;

my $text = <STDIN>;
$text =~ s/(\d)+/_$1_/ig;
print lc substr $text, 0, -1;
