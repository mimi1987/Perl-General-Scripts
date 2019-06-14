# Exercise 1, Chapter 6 Hashes

use v5.20;

my %names = (
  Michael => "Klemens",
  Alexandra => "Mayer",
  Marcel => "Flintstone",
  Elena => "Flintstone",
  Thomas => "Rubble",
  Sabine => "Rubble",
);

print "Who do you want? Enter a name:\n";
chomp(my $name = <STDIN>);
print "The family name of $name is $names{$name}.\n";
