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
