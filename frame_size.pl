use strict;
use Win32::Clipboard;

my $cb = Win32::Clipboard();



my %frames = (
  1 => "92x92mm",
  2 => "92x163mm",
  3 => "92x234mm",
  4 => "92x306mm",
  5 => "92x377mm"
);


while (1) {
  print "Enter the key ('exit' to quit): ";
  my $key = <STDIN>;
  chomp $key;
  if ($key == "exit") {
    exit;
  }
  $cb->Set($frames{$key});
}
