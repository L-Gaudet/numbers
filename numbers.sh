#! /bin/bash
# numbers.sh
# Lucas Gaudet

echo "Enter a positive integer: "

read NUMBER
while echo "$NUMBER" | egrep -v "^[0-9]+$" > /dev/null 2>&1
do
	echo "You must enter a valid number!"
	echo "Enter a positive integer: "
	read NUMBER
done

N=1

while [ $N -le $NUMBER ]
do
	if [ $((N%2)) -eq 0 ]
	then
		echo "$N Even"
	else
		echo "$N Odd"
	fi
	N=$((N+1))
done
