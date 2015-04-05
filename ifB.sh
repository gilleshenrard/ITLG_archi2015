#! /bin/bash

#
#	TP 1.4b - Listage des lignes dont les valeurs sont supérieures à 10
#

cat data | cut -d' ' -f2 > /tmp/out

while read line
do
	if [ $line -ge 10 ]; then
		echo "$line"
	fi
done < /tmp/out

rm /tmp/out
