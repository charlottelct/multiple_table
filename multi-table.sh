#!/bin/bash

# Print help Function in case parameters are empty
if [ -z "$1" ] || [ -z "$2" ]
then
   echo "Some or all of the parameters are empty";
   exit 1
fi

# Begin script in case all parameters are correct
multpiple=1
j=1
while ((j<=$1)); do
	while ((multpiple<=$2))
	do
		res=$(($j*$multpiple))
		echo -n "$j*$multpiple=$res "
		((multpiple+=1))
		res=0
	done
	multpiple=1
	printf '\n'
	((j+=1))
done