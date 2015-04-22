#! /bin/bash

#
#	TP 1.2 - Utilisation de la fonction selon que (case)
#

echo "*********** Menu général ************"
echo "<1> Comptabilité"
echo "<2> Gestion commerciale"
echo "<3> Paie"
echo "<9> Quitter"
echo "*************************************"

read choice
case $choice in
	1) echo "Comptabilité";;
	2) echo "Gestion commerciale";;
	3) echo "Paie";;
	9) echo "Quitter";;
	*) echo "Choix invalide";;
esac
