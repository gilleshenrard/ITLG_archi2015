#! /bin/bash

#
#	TP 1.1 - Utilisation de la fonction TEST
#

case $1 in
	"-t")	#test du fichier envoyé en paramètre
		if [ ! -e $2 ]
			then
				echo "$2 n'existe pas"

			elif [ -f $2 ]
			then
				echo "$2 est un fichier"

			elif [ -d $2 ]
			then
				echo "$2 est un répertoire"
		fi;;

	"-f")	#affichage des fichiers uniquement
		for file in $2/*
			do if [ -f "$file" ]
				then tmp=${file##*/}	#coupe le chemin dans le nom du fichier
				echo "$tmp"		# imprime le nom de fichier
			fi
		done;;

	"-d")	#affichage des répertoires uniquement
		for file in $2/*
			do if [ -d "$file" ]
				then tmp=${file##*/}	#coupe le chemin dans le nom du dossier	
				echo "$tmp"		# imprime le nom de dossier
			fi
		done;;

	"-c")	#comptage des fichiers et répertoires dans le répertoire donné
		for file in $2/*
			do let i=i+1
		done
		echo "$i";;

	*)	#mauvaise option
		echo "Option $1 invalide";;
esac
