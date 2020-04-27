use 5.030;

# Copy a file with binary read and write.

# Open the source and destination file.
open FROM, "<", "input.txt";
open TO, ">", "output.txt";

# Read and write the content of the source file to the destination file.
while (read FROM, my $buff, 20000)
{
  print TO $buff;
}

# Close the filehandles.
close FROM;
close TO;
