#! /bin/bash

#
#	TP 1.5 - Utilisation de la fonction UNTIL
#

entry=''
until [ $entry == 'Q' ]
	do read entry

	if [ $(entry) -le 0 ]; then
		echo "Erreur pendant l'exécution"
	fi
done
