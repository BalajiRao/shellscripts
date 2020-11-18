#!/bin/bash
file1=source.txt
file2=destination.txt

cp $file1 $file2

user=$1
echo "Entered User: $1"

grep $user /etc/passwd > /dev/null
if [ $? -eq 0 ]
then
 echo "Valid User"
else
 echo "Invalid User"
fi
