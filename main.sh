#! /bin/bash

#
#	TP 1.7a - Création d'un menu grâce à la fonction select
#

select choix in \
		"Liste des utilisateurs connectés" \
		"Liste des processus" \
		"Informations de l'utilisateur (nom, UID, GID, TTY1)" \
		"Quitter"
	do
	case $REPLY in
		1) who;;
		2) ps -eo ruser,comm;;
		3) id;;
		4) exit 0;;
		*) echo "choix invalide";;
	esac 
done

