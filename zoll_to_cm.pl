use strict;

# Converts a passed zoll value to cm and prints the result in the needed format
sub zoll_to_cm
{
  my $zoll = shift @_;
  print "$zoll\"/" . $zoll * 2.54 . "cm" . "\n";
}

&zoll_to_cm(100);