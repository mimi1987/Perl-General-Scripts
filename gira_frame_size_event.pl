use strict;
use Win32::Clipboard;

my $cb = Win32::Clipboard();

my %frames = (
  "1fach" => "90x90mm",
  "2fach" => "90x161mm",
  "3fach" => "90x233mm",
  "4fach" => "90x304mm",
  "5fach" => "90x375mm",
);

$cb->Set($frames{'2fach'});
