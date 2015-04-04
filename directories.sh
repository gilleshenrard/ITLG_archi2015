#! /bin/bash
#
#	TP 1.1 - Script qui n'affiche que les répertoires
#

for file in $1/*
	do if [ -d "$file" ]
		then tmp=${file##*/}	#coupe le chemin dans le nom du dossier
			echo "$tmp"	# imprime le nom de dossier
	fi
done
