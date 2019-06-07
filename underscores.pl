use v5.20;

print "Underscoring: ";
my $text = <STDIN>;
chomp $text;
$text =~ s/(\d+)/_$1_/ig;
my $last_chr = substr $text, -1;
my $first_chr = substr $text, 0, 1;

if ($first_chr eq "_") {
  $text = substr $text, 1;
}

if ($last_chr eq "_") {
  $text = substr $text, 0, -1;
}

print "$text\n";
