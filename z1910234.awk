#!/usr/bin/awk -f
#  ^^^ maybe remove usr maybe.
# Dale Westberg z1910234
	# CSCI 330
	# Assignment #3
	# 9/18/20

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
		#assign to name[associate id]
		name[$1] = $2
		#assign to position[associate id]
		position[$1] = $3
		#take out weird newline character 
		position[$1] = substr(position[$1], 1, (length(position[$1]) - 1))
		total[$1] = 0
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
		
		#print line formated to; name = 20 left-justified, position = 12 left-justified, total = 13 and 2 decimal places.
		printf ("%-20s%-12s%12.2f\n", name[myVal], position[myVal], total[order[h]])
	
		
		#total[order[h]]
	}
}



