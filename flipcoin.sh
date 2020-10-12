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
#doublet combination
doubletcombination ( ) {

coin[headhead]=0
coin[headtail]=0
coin[tailhead]=0
coin[tailtail]=0

for (( i=0; i<$loop; i++ ))
do
firstcoinflip=$((RANDOM%2))
secondcoinflip=$((RANDOM%2))

if [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 0 ]
then
	echo " it is a head_head combination"
	coin[headhead]=$(( ${coin[headhead]}+1 ))
elif [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 1 ]
then
	echo "it is a head_tail combination"
	coin[headtail]=$(( ${coin[headtail]}+1 ))
elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 0 ]
then
        echo "it is a tail_head combination"
        coin[tailhead]=$(( ${coin[tailhead]}+1 ))
elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 1 ]
then
        echo "it is a tail_tail combination"
        coin[tailtail]=$(( ${coin[tailtail]}+1 ))
fi
done

echo " number of head_head combination flips" ${coin[headhead]}
echo " number of head_tail combination flips" ${coin[headtail]}
echo " number of tail_head combination flips" ${coin[tailhead]}
echo " number of tail_tail combination flips" ${coin[tailtail]}

sumofcombinations=$(( ${coin[headhead]}+${coin[headtail]}+${coin[tailhead]}+${coin[tailtail]} ))
percentageofHeadHead=$(( (${coin[headhead]}*100)/$sumofcombinations ))
percentageofHeadTail=$(( (${coin[headtail]}*100)/$sumofcombinations ))
percentageofTailHead=$(( (${coin[tailhead]}*100)/$sumofcombinations ))
percentageofTailTail=$(( (${coin[tailtail]}*100)/$sumofcombinations ))

echo " percentage of head_head combination:" $percentageofHeadHead"%"
echo " percentage of head_tail combination:" $percentageofHeadTail"%"
echo " percentage of tail_head combination:" $percentageofTailHead"%"
echo " percentage of tail_tail combination:" $percentageofTailTail"%"

}
