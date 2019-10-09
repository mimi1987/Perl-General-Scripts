use strict;
use v5.30.0;
use Win32::Clipboard;

my $cb = Win32::Clipboard();

while (1)
{
  print("Paste/Enter the merchant code: ");
  my $mpn = <STDIN>;
  chomp($mpn);
  if (lc($mpn) eq "exit")
  {
    exit;
  };
  $mpn =~ s/(\d+)/_$1_/g;
  $mpn =~ s/\A_//;
  $mpn =~ s/\Z_//;
  $mpn =~ s/\A/\\y/;
  $mpn =~ s/\Z/\\y/;

  $cb->Set($mpn);
};
