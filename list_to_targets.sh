#!/bin/bash

# For loop to create list of hosts that can be pasted in the Targets file of Smokeping. 
# Script expect one hostname per line. 

while read p; do

# Replace . with underscore, the ++ item can't have a period in it. 
hst=`echo $p | sed 's/\./_/g'`

echo "++ $hst"
echo "menu = $p"
echo "title = $p"
echo "host = $p"
echo ""

done < input.txt
