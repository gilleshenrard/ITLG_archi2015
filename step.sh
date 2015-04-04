#! /bin/bash

#
#	TP 1.3 - Traitement de l'équation y=x et y=x², -10<x<10 avec choix des bornes et incrément
#

i=$1
echo "*** y=x ***"
until [ $i -gt $2 ]; do 
	echo "x=$i, y=$i"
	let i=i+$3
done
echo "***********"
echo
i=$1
echo "*** y=x² ***"
until [ $i -gt $2 ]; do
	let j=$i*$i
	echo "x=$i, y=$j"
	let i=i+$3
done
echo "************"
