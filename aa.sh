#!/bin/bash

DATA=`egrep -o "<td>[\ ]?([0-9]+)(<br>)</td>" "$1" | grep -o "[0-9]*" | sort -nr | head -n 1`
DATA2=`egrep $DATA "$1" | egrep -o "<a href=\"http:\/\/www.textfiles.com\/etext\/FICTION\/.+(\.txt)?<\/a>"`

echo "Name: " `echo $DATA2 | egrep -o ">(.*)<" | tr -d "<" | tr -d ">"`
echo "Link: " `echo $DATA2 | egrep -o "http:\/\/www.textfiles.com\/etext\/FICTION\/.+(\.txt)?\">" | tr -d "\">"`
echo "Size: $DATA bytes"
