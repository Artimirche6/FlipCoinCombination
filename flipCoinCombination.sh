#!/bin/bash -x

declare -A singlet
declare -A percent

read -p "Enter how many times you want to flip coin: " num

head=0
tail=0

for((i=1; i<=$num; i++))
do
	flip=$(($RANDOM%2))
	
	if [ $flip -eq 1 ]
	then
		echo "HEAD"
		head=$(($head+1))
	else
		echo "TAIL"
		tail=$(($tail+1))
	fi
done

singlet[H]=$head
singlet[T]=$tail

echo "Number of head= $head"
echo "Number of tail= $tail"

echo "Singlet of Head and Tail resp : ${singlet[*]}"

percent[H]=$(($head*100/21))
percent[T]=$(($tail*100/21))

echo "Percentage of Head and Tail resp : ${percent[*]}"
