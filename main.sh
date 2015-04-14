#! /bin/bash

#
#	TP 1.1 - Utilisation de la fonction TEST
#

case $1 in
	"-t")	if [ ! -e $2 ]
			then
				echo "$2 n'existe pas"

			elif [ -f $2 ]
			then
				echo "$2 est un fichier"

			elif [ -d $2 ]
			then
				echo "$2 est un répertoire"
		fi;;

	"-f")	for file in $2/*
			do if [ -f "$file" ]
				then tmp=${file##*/}	#coupe le chemin dans le nom du fichier
				echo "$tmp"		# imprime le nom de fichier
			fi
		done;;

	"-d")	for file in $2/*
			do if [ -d "$file" ]
				then tmp=${file##*/}	#coupe le chemin dans le nom du dossier	
				echo "$tmp"		# imprime le nom de dossier
			fi
		done;;

	"-c")	for file in $2/*
			do let i=i+1
		done
		echo "$i";;

	*)	echo "Option $1 invalide";;
esac
