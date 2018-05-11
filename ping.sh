#!/bin/bash

if [ $# -ne 2 ]; then
	exit 1
fi

URL="$1"
DIRNAME=$(echo $URL | cut -d'/' -f3)
DIR=$2/$DIRNAME

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

FILE=$DIR/$DATE.txt

STATUS=$(curl -i -X GET --connect-timeout 5 --max-time 5 $URL 2>/dev/null | head -n 1 | cut -d' ' -f 2)

# save as x if no server status
if [ -z $STATUS ]; then
	STATUS="x"
fi

# create folder is missing
mkdir -p $DIR

# write
echo "$TIME $STATUS" >> $FILE
