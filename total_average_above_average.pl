sub total {
  my $sum;  # private variable
  foreach (@_) {
    $sum += $_;
  }
  $sum;
}

sub average {
  if (@_ == 0) { return }
  my $count = @_;
  my $sum = &total(@_);
  $sum/$count;
}

sub above_average {
  my @list;
  my $average = &average(@_);
  foreach my $element (@_) {
    if ($element > $average) {
      push @list, $element;
    }
  }
  @list;
}

my $length = above_average(1..1000);
printf "I'm avove average:\n" . ("%10d\n" x $length), above_average 1..1000;
