#! /bin/bash

#
#	TP 1.4b - Listage des lignes dont les valeurs sont supérieures à 10
#

while read line
do
	line=${line##*\ }
	if [ $line -ge 10 ]; then
		echo "$line"
	fi
done < data
