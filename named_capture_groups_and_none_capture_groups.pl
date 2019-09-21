use strict;
use warnings;
use v5.26.1;

# named capturing groups are saved in the special hash %+

my $names = "Fred or Barney.\n";

if ($names =~ /(?<name1>\w+) (?:and|or) (?<name2>\w+)/) {
  say "Found $+{name1} and $+{name2}.";
}
