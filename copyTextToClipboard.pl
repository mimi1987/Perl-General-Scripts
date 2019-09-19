use strict;
use v5.30.0;
use Win32::Clipboard;

# Create clipboard object
my $CLIP = Win32::Clipboard();

# Text to be copied into the Clipboard
my $text = "Replace here with your text!";

# Set the Clipboard
$CLIP->Set($text);
