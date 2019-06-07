use v5.20;

sub greet {
  state $prev_name;
  my $curr_name = shift @_;
  if (defined $prev_name) {
    print "Hi $curr_name! $prev_name is also here!\n";
    $prev_name = $curr_name;
  } else {
    print "Hi $curr_name! You are the first one here.\n";
    $prev_name = $curr_name;
  }
}

&greet("Michael");
&greet("Markus");
&greet("Thomas");
&greet("Alexandra");
