#! /bin/bash

#
#	TP 1.4b - Listage des lignes dont les valeurs sont supérieures à 10
#

for line in `cat data`; do
	num=$line
	cut -d ' ' -f 1 $num
	if [ $num -ge 10 ]
		then echo "$line"
	fi
done
