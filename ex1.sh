#! /bin/bash

#creation du groupe students
groupadd students

#creation du dossier avec les bons droits et changement du groupe
mkdir -m 775 /home/students
chgrp students /home/students/

#creation des fichiers avec la premiere ligne
for i in $(seq 1 10)
do
	echo "exemple-$i" >> /home/students/fichiers-$i.txt
done

#changement des groupes et des droits de tous les fichiers d'un coup
chmod g+w /home/students/fichiers-*
chgrp students /home/students/fichiers-*

#lecture du nom d'utilisateur ligne par ligne dans le fichier users
while read line
do
	#creation de l'utilisateur sans password et ajout dans le groupe students comme groupe secondaire
	useradd -G students $line
	for i in $(seq 1 10)
	do
		#execution de la ligne suivante en tant que l'utilisateur fraichement créé dans tous les fichiers
		su -c "echo lu par $line >> /home/students/fichiers-$i.txt" $line
	done
done < users

#l'utilisation de "su -c" permet d'exécuter une commande en tant qu'un utilisateur sans avoir
#	a se connecter en tant que lui
#ATTENTION : si il y a besoin d'un password utilisateur, ca bloquera le script
