#!/usr/bin/awk -f

BEGIN {
 FS= ":"
 print "Marine Parts R Us"
 print "Main catalog"
 print "Part-id\tname\t\t\t price"
 print "=================================="
}
{
 printf("%3d\t%-20s\t%6.2f\n", $1, $2, $3)
}
END {
 print "=================================="
 print "Catalog has", NR, "parts"
}