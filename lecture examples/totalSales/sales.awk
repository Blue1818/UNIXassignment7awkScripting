#!/usr/bin/awk -f

{
 deptSales[$2] += $3
}
END {
 for (x in deptSales)
 print x, deptSales[x]
}