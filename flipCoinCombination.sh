#!/bin/bash 

declare -A doublet
declare -A percent

num=21
TT=0
TH=0
HT=0
HH=0

for((i=1; i<=$num; i++))
do
	flip1=$(($RANDOM%2))
	flip2=$(($RANDOM%2))

	if [ $flip1 -eq 0 ] && [ $flip2 -eq 0 ] 
	then
		echo "TT"
		TT=$(($TT+1))
	elif  [ $flip1 -eq 0 ] && [ $flip2 -eq 1 ]
	then
   		echo "TH"
   		TH=$(($TH+1))
	elif [ $flip1 -eq 1 ] && [ $flip2 -eq 0 ]
	then
   		echo "HT"
   		HT=$(($HT+1))
	elif  [ $flip1 -eq 1 ] && [ $flip2 -eq 1 ]
	then
   		echo "HH"
   	HH=$(($HH+1))
	else
		echo "invalid"
	fi 
done 

doublet[TT]=$TT 
doublet[TH]=$TH
doublet[HT]=$HT
doublet[HH]=$HH

echo "Doublet Head and Tail resp : doublet: ${doublet[*]}"

percent[TT]=$(($TT*100/21))
percent[TH]=$(($TH*100/21))
percent[HT]=$(($HT*100/21))
percent[HH]=$(($HH*100/21)) 

echo "Percentage Head and Tail resp : percent: ${percent[*]}"
