# A much shorter version of the underscore.pl program.

use v5.20;

print "Underscoreing: ";
my $text = <STDIN>;
chomp $text;
$text =~ s/(\d+)/_$1_/ig;
$text =~ s/^_//;
$text =~ s/_$//;
print "$text\n";
