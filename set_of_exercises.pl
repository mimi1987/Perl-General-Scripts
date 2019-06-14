# Exercise 1, Chapter 6 Hashes

use v5.20;

my %names = (
  Michael => "Klemens",
  Alexandra => "Mayer",
  Marcel => "Flintstone",
  Elena => "Flintstone",
  Thomas => "Rubble",
  Sabine => "Rubble",
);

print "Who do you want? Enter a name:\n";
chomp(my $name = <STDIN>);
print "The family name of $name is $names{$name}.\n";


###################################################################################################
# EXERCISE 2,CHAPTER 6 HASHES - Count the appearence of words.
# Read a series of words (one word per line) until end of input.
my(@words, $word, %word_seen_before);
print "Please enter some words on separate lines: \n";
@words = <STDIN>;


# Print a summary of how many times a word was seen.
 foreach $word (@words) {
   if (exists $word_seen_before{$word}) {
     $word_seen_before{$word} += 1;
   } else {
     $word_seen_before{$word} = 1;
   }
 }

 while (my($key, $value) = each %word_seen_before) {
   print "$key => $value\n";
 }
 
 
 ###################################################################################################################
  # Another version of the previous exercise.
  use v5.20;

# Declare our identifiers that we need.
my(@words, %count, $word);

# Ask the user for input.
print "Please enter some words one at each line: \n";
chomp(@words = <STDIN>);

# Save the words of the words list into a hash,
# and increment the value by 1 everytime the key appearce.
foreach $word (@words) {
  $count{$word} += 1;
}

# iterate of the hash and print out all the keys
# with corresponding values in sorted code point order.
foreach (sort keys %count) {
  print "$_ was seen $count{$_} times.\n";
}

###############################################################################
# EXERCISE 3, CHAPTER 6

# Print all the keys and values of %ENV.
# foreach (values %ENV) {
#   print length "$_";
#   print "\n";
# }

# while (my($key, $value) = each %ENV) {
#   printf "%36s => %10s\n", $key, $value;
# }

foreach (sort keys %ENV) {
  printf "%36s => %s\n", $_, $ENV{$_};
}

