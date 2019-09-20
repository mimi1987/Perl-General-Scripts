# Program takes file(s) as input and prints line(s) if fred is matched.

use strict;
use warnings;
use v5.26.1;

while (<>) {
  if (/fred/i) {
    chomp;
    print "$_\n";
  }
}
