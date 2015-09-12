#!/bin/bash

################
# Script to find max packet size the the DEST_HOST can be pinged with without fragmentation
#
# Created by: Akash Pandey
# Date: 2-Aug-2015
################

SIZE=1500
DEST_HOST="www.mi.fu-berlin.de"

# Using -M do option to prevent fragmentation
ping -M do -c 1 -s $SIZE $DEST_HOST &> /dev/null
stat=$?

while [ $stat -ne 0 ]; do
 ((SIZE--))
 ping -M do -c 1 -s $SIZE $DEST_HOST &> /dev/null
 stat=$?
done

echo "Required packet size : "$SIZE
