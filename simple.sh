#! /bin/bash

#
#	TP 1.3 - Traitement de l'équation y=x et y=x², -10<x<10 avec un FOR
#

echo "*** y=x ***"
for i in `seq -10 10`
	do echo "x=$i, y=$i"
done
echo -e "***********\n\n"

echo "*** y=x² ***"
for i in `seq -10 10`
	do let j=$i*$i
	echo "x=$i, y=$j"
done
echo "************"
