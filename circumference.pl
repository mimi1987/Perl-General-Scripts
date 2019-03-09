use strict;
use v5.8;
use warnings;
use constant PI => 3.141592654;

my $radius = <STDIN>;
chomp $radius;
my $circumference = $radius * 2 * PI;
print "$circumference\n";
