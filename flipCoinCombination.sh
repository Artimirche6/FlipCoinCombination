#! /bin/bash -x

echo "This problem displays winning percentage of Head or Tail Combination in a Singlet, Doublet and Triplet"

flip=$(($RANDOM%2))

if [ $flip -eq 1 ]
then
	echo "HEAD"
else
	echo "TAIL"
fi
