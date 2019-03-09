use strict;
use v5.8;
use warnings;
use constant PI => 3.141592654;

print "Please enter a radius: ";
my $radius = <STDIN>;
chomp $radius;
my $circumference = $radius * 2 * PI;
if ($circumference <= 0){
  print "The circumference of the circle is 0.";
}
else {
    print "The circumference of the circle is $circumference\n";
}
