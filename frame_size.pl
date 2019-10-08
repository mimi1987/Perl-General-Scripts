use strict;
use Win32::Clipboard;

my $cb = Win32::Clipboard();



my %frames = (
  e1 => "91x91mm",
  e2 => "91x162mm",
  e3 => "91x233mm",
  e4 => "91x304mm",
  e5 => "91x375mm",
  t1 => "88x88mm",
  t2 => "88x159mm",
  t3 => "88x230mm",
  t4 => "88x302mm",
  t5 => "88x373mm",
);


while (1) {
  print "Enter the key ('exit' to quit): ";
  my $key = <STDIN>;
  chomp $key;
  # use string comparison operator
  # otherwise if keys are not just a single digit
  # program will always exit
  if ($key eq "exit") {
    exit;
  }
  $cb->Set($frames{$key});
}
