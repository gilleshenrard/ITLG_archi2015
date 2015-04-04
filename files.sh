#! /bin/bash
#
#	TP 1.1 - Script qui n'affiche que les fichiers
#

for file in $1/*
	do if [ -f "$file" ]
		then tmp=${file##*/}	#coupe le chemin dans le nom du fichier
			echo "$tmp"	# imprime le nom de fichier
	fi
done
