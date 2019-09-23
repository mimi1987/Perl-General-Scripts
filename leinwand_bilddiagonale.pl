use strict;
use POSIX; # used for the floor function
use Win32::Clipboard;

# Init Clipboard object
my $cb = Win32::Clipboard();


# Converts a passed zoll value to cm and prints the result in the needed format
sub zoll_to_cm
{
  my $zoll = shift @_;
  return my $bilddiagonale = "$zoll\"/" . floor($zoll * 2.54) . "cm";
}

$cb->Set(&zoll_to_cm(92));
