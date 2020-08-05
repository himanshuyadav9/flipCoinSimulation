#!/bin/bash -x

echo "Welcome to flip coin simulation"

playerOne=0
playerTwo=0
maxWin=21

while (( $playerOne < $maxWin && $playerTwo < $maxWin ))
do
coinFlip=$((RANDOM%2))
if [[ $coinFlip -eq 1 ]]
then
        echo "Player One won this round"
        ((playerOne++))
else
        echo "Player Two Won this round"
        ((playerTwo++))
fi
done

if (( $(( $playerOne==$playerTwo )) ))
then
	echo "It's a Tie"
elif (( $(( $playerOne>=$playerTwo )) ))
then
   echo "Player One Won by difference of: " $(( $maxWin - $playerTwo ))
else
	echo "Player Two Won by difference of: " $(( $maxWin - $playerOne))
fi
