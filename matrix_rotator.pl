#! usr/bin/perl -w
use strict;
 
# create an array of references, top left data being x=0, y=0 
my @ref_matrix = ( [1,2,3,4] , 	   
                   [5,6,7,8] ,
                   [1,1,1,1] , 
                   [4,4,4,4] , 
                   [7,7,7,8] , 
                   [9,9,7,9] );

# show original data
print "from:\n";
for (@ref_matrix) { print "\t@{$_}\n"; }

# create two nested loops that simply swap x axis to y axis (x = outer loop, y = inner loop)
# outer loop will keep looping while first index of first array contains data
print "to:\n";
while (@{$ref_matrix[0]})
{
	# iterate through array of references (@ref_matrix) in reverse for each loop 
	# each iteration returns the first element of original x axis and shorten the array by 1 element
	print "\t";
	for (reverse @ref_matrix)	  
	{ print shift (@{$_}) . " "; } 
	print "\n";
}
<STDIN>;
