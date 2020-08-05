#!/bin/bash -x

echo "Welcome to flip coin simulation"

count=0
while (( $count < 50 ))
do
((count++))
coinFlip=$((RANDOM%2))
if (( $(( $coinFlip==1 )) ))
then
        echo "Head"
else
        echo "Tail"
fi
done
