#! /bin/bash
#
#	TP 1.1 - Script qui n'affiche que les répertoires
#

for file in $1/*
	do if [ -d "$file" ]
		then echo "$file"
	fi
done
