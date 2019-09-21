use strict;
use warnings;
use v5.26.1;

$_ = "Hello, I'm a string in Perl. I will get parsed by regex soon 99.999%.\n";

if (
/
(
-?      # Matches an optional minus sign
[0-9]+  # One or more digits before decimal point
\.?     # Optional decimal point
[0-9]*  # Non or some digits after the decimal point
)
/x
) {
  print "I found a number: $1\n";
}
