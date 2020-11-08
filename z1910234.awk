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
		name[$1] = $2;
		print name[$1];
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
	print name[$1];
}

END {
order[0]
# for (i in name)
# {
	# max = 0;
	# print i;
	# for (x in name)
	# {
		# flag = 0;
		# for (j = 0; j < i; j++)
		# {
			# if (x == order[j])
			# {
				# flag = 1;
			# }
		# }
		# if (total[x] > max)
		# {
			# if (flag == 0)
			# {
				# order[i] = x;
				# max = total[x];
				# print order[i];
			# }
		# }
	# }
# }
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
				#print order[counter3];
			}
		}
	}
	counter3 += 1;
}

for (h in order)
{
	index = order[h];
	print name[index], position[index], total[index];
}
}



