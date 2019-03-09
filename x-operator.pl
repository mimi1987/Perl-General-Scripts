use strict;
use warnings;
use v5.8;

print "Please enter a string: ";
my $string = <STDIN>;
print "Please enter a number: ";
my $number = <STDIN>;
print "$string\n" x $number;
