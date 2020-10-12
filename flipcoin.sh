#!/bin/bash -x
echo "welcome to flipcoin"
loop=20
declare -A coin
#singlet combination
singletcombination ( ) {

coin[heads]=0
coin[tails]=0

for (( i=0; i<$loop; i++ ))
do
coinflip=$((RANDOM%2))

if [ $coinflip -eq 0 ]
then
	echo " coin flips head "
	coin[heads]=$(( ${coin[heads]}+1 ))
else
	echo "coin flips tail "
	coin[tails]=$(( ${coin[tails]}+1 ))
fi

done

echo "number of times head flips:" ${coin[heads]} 
echo "number of times tail flips:" ${coin[tails]}

sumofheadtail=$(( ${coin[heads]}+${coin[tails]} ))
percentageofHeads=$(( (${coin[heads]}*100)/$sumofheadtail ))
percentageofTails=$(( (${coin[tails]}*100)/$sumofheadtail ))

echo "percentage of heads:" $percentageofHeads"%"
echo "percentage of tails:" $percentageofTails"%"

}
