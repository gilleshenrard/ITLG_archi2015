#! /bin/bash

#
#	TP 1.5 - Utilisation de la fonction UNTIL
#

entry=''						#Initialisation de la variable
until [ "$entry" == "Q" ]
	do read entry					#Lecture de la commande

	if [ "$entry" != "Q" ]; then			#Test si non 'Q'
		$entry					#Exécution de la commande
		if [ $? -ne 0 ]; then			#Test de la valeur de retour (#?)
			echo "Erreur à l'exécution"
		fi
	fi
done
