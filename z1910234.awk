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
    print "Name                Position    Sales Amount"
    print "============================================"
}

# First create 4 arrays for the 4 different types of information.
# 1: Array of product prices, using product id as the index.
# 2 & 3: 2 parallel arrays for associate id (index is the name), and position that uses associate id as the index.
# 4: Array total amounts sold using associate id as the index.
$0 != "" {
	#Counter starts at 0.
	#Whenever the first record (the id) is 1, you are at the start of a new type of record.
	if ($1 == 1)
		counter += 1
	
	#Counter number corresponds with the type of record.
	if (counter == 1)
		price[$1] = $4
	
	if (counter == 2)
	{
		name[$1] = "                  ";
		name[$1] = $2;
		position[$1] = "            "
		position[$1] = $3;
		total[$1] = 0;
	}
	else
	{
		split($4, dateCheck, "/");
		if (dateCheck[3] == 2018)
		{
			total[$5] += (price[$2] * $3);
		}
	}
}

END {
	order[0]
	counter3 = 0
	for (i in total)
	{
		#i = associate index
		
		max = 0;
		for (x in total)
		{
			flag = 0;
			for (j = 0; j < length(order); j++)
			{
				if (x == order[j])
				{
					flag = 1;
				}
			}
			if (total[x] > max)
			{
				if (flag == 0)
				{
					order[counter3] = x;
					max = total[x];
				}
			}
		}
		counter3 += 1;
	}

	for (h in order)
	{
		#myVal -> associate id.
		myVal = int(order[h])
		
		# printImg1 = sprintf ("%-17s", name[myVal])
		# print printImg1
		# printImg2 = sprintf ("%-11s\n", position[myVal])
		# print printImg2
		#printImg3 = sprintf (
		#print printImg1, printImg2
		
		#printImg = sprintf("%42d", total[order[h]])
		printImg1 = " "
		printImg1 = name[myVal] 
		printImg1 = sprintf("%-19s", printImg1)
		#print printImg1
		printImg2 = " "
		printImg2 = position[myVal]
		printImg2 = sprintf("%12s", printImg2)
		#print printImg2
		printImg3 = " "
		printImg3 = sprintf(" %.2f\n", total[order[h]])
		
		printf("%s", printImg2)
		printf ("%s", printImg1)
		
		printf(" %s\n", total[order[h]])

		
		#total[order[h]]
	}
}



