use v5.20;

sub greet {
  state @prev_names;
  my $curr_name = shift @_;
  if (@prev_names) {
    print "Hi $curr_name! I have also seen @prev_names\n";
    push @prev_names, $curr_name;
  } else {
    print "Hi $curr_name! You are the first one here.\n";
    push @prev_names, $curr_name;
  }
}

&greet("Michael");
&greet("Markus");
&greet("Thomas");
&greet("Alexandra");
&greet("Barney");
&greet("Betty");
&greet("Wilma");
