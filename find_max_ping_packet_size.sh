#!/bin/bash

####################
# Script to find the max packet size that DEST_HOST can be pinged with
#
# Created by: Akash Pandey
# Date: 1-Aug-2015
####################


DEST_HOST="www.mi.fu-berlin.de"

min=1500
max=63000
#ping -M do -c 1 -s $max $DEST_HOST &> /dev/null
#stat=$?

while [ $max -ne $min ]; do
 mid=$(((min+max)/2))
 echo "mid = "$mid
 ping -c 1 -s $mid $DEST_HOST &> /dev/null
 stat=$?
 if [ $stat -eq 0 ] 
 then
   min=$mid
 else
   max=$mid
 fi 
done

echo "Max packet size is : "$max
