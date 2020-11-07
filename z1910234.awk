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

BEGIN
{
    FS = ":"
    print "Name              Position    Sales Amount"
    print "=========================================="


    
}

END
{
	
}