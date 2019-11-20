use strict;
use warnings;
use v5.30.0;
use LWP::Simple;

# Get the website.
my $website = 'http://www.berker.com/de/e-katalog/schalterprogramme-und-gebaeudesteuerung/designlinien/berker-q.1/steckdosensysteme-international/6765766084/224871.htm';
my $html = get $website;
# print $html;

# Find the images source.
my $img_url = '';
if ($html =~ /img src="(.*?)"/ig) {
  $img_url = $1;
}

# Save the image.
my $domain = $website =~ m%(https?://www\..+\.com)%i ? $1: "nothing found";
print $domain . $img_url;
getstore $domain . $img_url, 'C:\Users\michaelm\Downloads\image.jpg';
