use strict;
use warnings;
use v5.14;

# prefix and suffix a number with underscores and if the last character is a number the suffic underscore is removed.
my $text = <STDIN>;
$text =~ s/(\d)+/_$1_/ig;
print lc substr $text, 0, -1;
