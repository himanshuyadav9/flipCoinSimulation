#!/bin/bash -x

echo "Welcome to flip coin simulation"

isHead=1
result=$((RANDOM%2+1))


if(( $isHead == $result))
then
	echo "Head"
else
	echo "Tail"
fi
