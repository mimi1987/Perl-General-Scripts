print "Enter a column width\n";
chomp(my $column_width = <STDIN>);
$column_width = $column_width * 1;
my $multiplier = $column_width / 10;
print "Enter a list of strings on separate lines. Finish your input with STRG+Z for Windows or STRG+D for Linux.\n";
chomp(my @lines = <STDIN>);
print "1234567890" x $multiplier . "12345\n";
foreach (@lines) {
  printf "%${column_width}s\n", $_;
}
