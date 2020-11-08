#!/usr/bin/awk -f
#  ^^^ maybe remove usr maybe.
# Dale Westberg z1910234
	# CSCI 330
	# Assignment #3
	# 9/18/20

# BEGIN {
 # FS= ":"
 # print "Marine Parts R Us"
 # print "Main catalog"
 # print "Part-id\tname\t\t\t price"
 # print "=================================="
# }
# {
 # printf("%3d\t%-20s\t%6.2f\n", $1, $2, $3)
# }
# END {
 # print "=================================="
 # print "Catalog has", NR, "parts"
# }

BEGIN {
	

	
	counter = 0
    FS= ":" 
    print "Name              Position    Sales Amount"
    print "=========================================="
}

# First create 3 arrays for the 3 different types of information.
# 1: array of product prices, using product id as the index.
# 2 & 3: 2 parallel arrays for associate name and position that use associate id as the index.
$0 != ""
{
	
	

	price[NR] = $1
	print $1
}


