use strict;
use warnings;
use v5.8;

print "Enter number 1: ";
my $number_one = <STDIN>;
chomp $number_one;
print "Enter number 2: ";
my $number_two = <STDIN>;
chomp $number_two;
my $product = $number_one * $number_two;
print "The product of number 1 and number 2 is $product.\n";
