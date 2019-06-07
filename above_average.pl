sub average {
  my $number_of_elements = 0;
  foreach (@_) {
    $number_of_elements += 1;
  }
  $number_of_elements;
}

sub above_average {
  my $dividend = &average(@_);
  my $average = 0;
  my @result = ();
  foreach (@_) {
    $average += $_;
    push @result, $_;
  }
  my $quotient = $average / $dividend;
  foreach (@result) {
    if ($_ > $quotient) {
      print "I'm above average: $_.\n";
    }
  }
  }

&above_average(100, 1..10);
