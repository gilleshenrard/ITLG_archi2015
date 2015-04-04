#! /bin/bash

#
#	TP 1.4a - Affichage d'un menu et sélection de choix par IF
#

echo "*********** Menu général ************"
echo "<1> Comptabilité"
echo "<2> Gestion commerciale"
echo "<3> Paie"
echo "<9> Quitter"
echo "**************************************"
read choice

if [ $choice -eq 1 ]
	then
		echo "Comptabilité"
	elif [ $choice -eq 2 ]; then
		echo "Gestion Commerciale"
	elif [ $choice -eq 3 ]; then
		echo "Paie"
	elif [ $choice -eq 9 ]; then
		echo "Quitter"
	else
		echo "Choix invalide"
fi
