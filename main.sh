#! /bin/bash

#
#	TP 1.6 - Etude de l'utilisation du WHILE
#

choix=0
while [ $choix -ne 9 ]; do
	echo "*********** Menu général *******************************"
	echo "<1> Afficher la date (date)"
	echo "<2> Afficher le nombre de personnes connectées (who)"
	echo "<3> Afficher la liste des processus (ps)"
	echo "<9> Quitter"
	echo "********************************************************\n"

	read choix
	case $choix in
		1) date;;
		2) who;;
		3) ps;;
		9) ;;
		*) echo "Choix invalide";;
	esac
done
