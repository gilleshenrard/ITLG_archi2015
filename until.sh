#! /bin/bash

#
#	TP 1.3 - Traitement de l'équation y=x et y=x², -10<x<10 avec un FOR
#

i=-10
echo "*** y=x ***"
until [ $i -gt 10 ]; do 
	echo "x=$i, y=$i"
	let i=i+1
done
echo "***********"
echo
i=-10
echo "*** y=x² ***"
until [ $i -gt 10 ]; do
	let j=$i*$i
	echo "x=$i, y=$j"
	let i=i+1
done
echo "************"
