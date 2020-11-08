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
	#counter as index for third records
	counter2 = 0
    FS= ":" 
    print "Name              Position    Sales Amount"
    print "=========================================="
}

# First create 4 arrays for the 4 different types of information.
# 1: Array of product prices, using product id as the index.
# 2 & 3: 2 parallel arrays for associate name and position that use associate id as the index.
# 4: Array total amounts sold using associate id as the index.
$0 != "" {
	#Counter starts at 0.
	#Whenever the first record (the id) is 1, you are at the start of a new type of record.
	if ($1 == 1)
		counter += 1
	
	if (counter == 1)
		price[$1] = $4
	
	if (counter == 2)
		name[$1] 
	else
		split($4, dateCheck, "/")
		if (dateCheck[3] == 2018)
			totals[$5] += (price[$5] * $3)

	
}



