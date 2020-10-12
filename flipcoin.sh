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
#triplet combination
tripletcombination ( ) {

coin[headheadhead]=0
coin[headheadtail]=0
coin[headtailhead]=0
coin[headtailtail]=0
coin[tailheadhead]=0
coin[tailheadtail]=0
coin[tailtailhead]=0
coin[tailtailtail]=0

for (( i=0; i<$loop; i++ ))
do
firstcoinflip=$((RANDOM%2))
secondcoinflip=$((RANDOM%2))
thirdcoinflip=$((RANDOM%2))

if [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 0 -a $thirdcoinflip -eq 0 ]
then
        echo " it is a head_head_head combination"
        coin[headheadhead]=$(( ${coin[headheadhead]}+1 ))

elif [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 0 -a $thirdcoinflip -eq 1 ]
then
        echo "it is a head_head_tail combination"
        coin[headheadtail]=$(( ${coin[headheadtail]}+1 ))

elif [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 1 -a $thirdcoinflip -eq 0  ]
then
        echo "it is a head_tail_head combination"
        coin[headtailhead]=$(( ${coin[headtailhead]}+1 ))

elif [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 1 -a $thirdcoinflip -eq 1  ]
then
        echo "it is a head_tail_tail combination"
        coin[headtailtail]=$(( ${coin[headtailtail]}+1 ))
elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 0 -a $thirdcoinflip -eq 0 ]
then
        echo " it is a tail_head_head combination"
        coin[tailheadhead]=$(( ${coin[tailheadhead]}+1 ))

elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 0 -a $thirdcoinflip -eq 1 ]
then
        echo "it is a tail_head_tail combination"
        coin[tailheadtail]=$(( ${coin[tailheadtail]}+1 ))

elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 1 -a $thirdcoinflip -eq 0  ]
then
        echo "it is a tail_tail_head combination"
        coin[tailtailhead]=$(( ${coin[tailtailhead]}+1 ))

elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 1 -a $thirdcoinflip -eq 1  ]
then
        echo "it is a head_tail_tail combination"
        coin[tailtailtail]=$(( ${coin[tailtailtail]}+1 ))

fi
done

echo " number of head_head_head combination flips" ${coin[headheadhead]}
echo " number of head_head_tail combination flips" ${coin[headheadtail]}
echo " number of head_tail_head combination flips" ${coin[headtailhead]}
echo " number of head_tail_tail combination flips" ${coin[headtailtail]}
echo " number of tail_head_head combination flips" ${coin[tailheadhead]}
echo " number of tail_head_tail combination flips" ${coin[tailheadtail]}
echo " number of tail_tail_head combination flips" ${coin[tailtailhead]}
echo " number of tail_tail_tail combination flips" ${coin[tailtailtail]}

sumofcombinations=$(( ${coin[headheadhead]}+${coin[headheadtail]}+${coin[headtailhead]}+${coin[headtailtail]}+ ${coin[tailheadhead]}+${coin[tailheadtail]}+${coin[tailtailhead]}+${coin[tailtailtail]} ))
percentageofHeadHeadHead=$(( (${coin[headheadhead]}*100)/$sumofcombinations ))
percentageofHeadHeadTail=$(( (${coin[headheadtail]}*100)/$sumofcombinations ))
percentageofHeadTailHead=$(( (${coin[headtailhead]}*100)/$sumofcombinations ))
percentageofHeadTailTail=$(( (${coin[headtailtail]}*100)/$sumofcombinations ))
percentageofTailHeadHead=$(( (${coin[tailheadhead]}*100)/$sumofcombinations ))
percentageofTailHeadTail=$(( (${coin[tailheadtail]}*100)/$sumofcombinations ))
percentageofTailTailHead=$(( (${coin[tailtailhead]}*100)/$sumofcombinations ))
percentageofTailTailTail=$(( (${coin[tailtailtail]}*100)/$sumofcombinations ))


echo " percentage of head_head_head combination:" $percentageofHeadHeadHead"%"
echo " percentage of head_head_tail combination:" $percentageofHeadHeadTail"%"
echo " percentage of head_tail_head combination:" $percentageofHeadTailHead"%"
echo " percentage of head_tail_tail combination:" $percentageofHeadTailTail"%"
echo " percentage of tail_head_head combination:" $percentageofTailHeadHead"%"
echo " percentage of tail_head_tail combination:" $percentageofTailHeadTail"%"
echo " percentage of tail_tail_head combination:" $percentageofTailTailHead"%"
echo " percentage of tail_tail_tail combination:" $percentageofTailTailTail"%"


}
singletcombination
doubletcombination
tripletcombination

#sort
variable=${coin[@]}
for values in $variable
do
	array[count]=$values
	count=$(( $count+1 ))
done
echo " array values are:" ${array[@]}

sort=`echo ${array[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort -n`

counter=0
for values in $sort
do
sortedarray[((counter++))]="$values"
done
echo "winning combination value:" ${sortedarray[${#sortedarray[@]}-1]}
