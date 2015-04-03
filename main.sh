#! /bin/bash

#
#	TP 1.1 - Utilisation de la fonction TEST
#

if [ $# -eq 0 ]
	then
		echo "Veuillez entrer un nom de fichier/repertoire"

	elif [ ! -e $1 ]
	then
		echo "$1 n'existe pas"

	elif [ -f $1 ]
	then
		echo "$1 est un fichier"

	elif [ -d $1 ]
	then
		echo "$1 est un répertoire"
fi
