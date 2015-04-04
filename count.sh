#! /bin/bash
#
#	TP 1.1 - Script qui compte le nombre de fichiers (non-cachés)
#

for file in $1/*
	do let i=i+1
done

echo "$i"
