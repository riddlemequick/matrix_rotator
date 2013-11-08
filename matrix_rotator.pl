#! usr/bin/perl -w
use strict;
 
# create an array of references, top left data being x=0, y=0 
my @ref_matrix = ( [1,2,3,4] , 	   
                   [5,6,7,8] );


# show original data
print "from:\n";
for (@ref_matrix)
{ for (@{$_}) { print "\t$_"; } print "\n"; }


# create two nested loops that simply swap x axis to y axis (x = outer loop, y = inner loop)
# outer loop will keep looping while first index of first array contains data
print "to:\n";
while (defined ${$ref_matrix[0]}[0])
{
	# assign each reference to $y (in reverse) for each loop 
	# inner loop will loop through original y axis in reverse
	# each inner loop will pop out the first element of original x axis and shorten the array by 1 element
	for my $y (reverse @ref_matrix)	  
	{ print "\t". shift @{$y}; } 
	print "\n";
}

<STDIN>;
