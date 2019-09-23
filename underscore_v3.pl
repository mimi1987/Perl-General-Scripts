use strict;
use warnings;
use v5.30.0;
use Win32::Clipboard;

my $cb = Win32::Clipboard();

my $mpn = lc "E1P1A1ABE1Z1";
$mpn =~ s/(\d+)/_$1_/ig;
$mpn =~ s/\A_//;
$mpn =~ s/_\Z//;
$mpn =~ s/\A/\\y/;
$mpn =~ s/\z/\\y/;

print $mpn;
$cb->Set($mpn);
