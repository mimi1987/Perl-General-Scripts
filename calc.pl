#!/usr/bin/perl

use v5.030;
no warnings 'experimental';


while (1)
{
	print "First number: ";

	chomp (my $num1 = <STDIN>);
	if ( lc $num1 eq 'q' )
	{
		exit;
	}

	print "Operator: ";
	chomp (my $operator = <STDIN>);
	if ( lc $operator eq 'q' )
	{
		exit;
	}

	print "Second number: ";
	chomp (my $num2 = <STDIN>);
	if ( lc $num2 eq 'q' )
	{
		exit;
	}

	my $result = 0;
	given ( $operator )
	{
		when ('+')  { $result = $num1 +  $num2; break; }
		when ('-')  { $result = $num1 -  $num2; break; }
		when ('*')  { $result = $num1 *  $num2; break; }
		when ('**') { $result = $num1 ** $num2; break; }
		when ('/')  { $result = $num1 /  $num2; break; }
		when ('%')  { $result = $num1 %  $num2; break; }
		default     { say "Unvalid input!";  }
	}

	say "Result: $result";

}
