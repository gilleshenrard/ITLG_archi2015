#! /bin/bash

#
#	Atelier - exercices sur le chapitre 8
#

# EXERCICE 1
cut -d: -f1 /etc/passwd | sort -o /tmp/out

# EXERCICE 2
ls -l /usr/bin | wc -l

# EXERCICE 3
find /usr/share/doc -name '*.gz' | wc -l

# EXERCICE 4
ps -eo euser,comm | grep $1

# EXERCICE 5
#le fichier /etc/passwd est lu, ligne par ligne, et le retour "\n" est remplacé par "\r", et la nouvelle ligne est copiée dans /tmp/newpasswd
#	etant donné que "\r" ne fait pas passer le curseur à la ligne suivante, contrairement à "\n", le fichier final consiste en une seule ligne,
#	où l'on voit la dernière ligne et les traces des anciennes lignes, plus longues

# EXERCICE 6
#partie 1
sort -g ex6Data
#parties 2 et 3 (les manips se font dans un fichier "test", penser à le virer)
cp ex6Data test
cut -d/ -f2 test | sort -r -o test

# EXERCICE 7
find /etc -type f -maxdepth 1 2> /dev/null | wc -l

# EXERCICE 8
find /etc -type d -maxdepth 1 2> /dev/null | wc -l

# EXERCICE 9
ls -R > files

# EXERCICE 10
ls -lR ~ > liste

# EXERCICE 11
find $1 -type l

# EXERCICE 13
ls -lhS /usr/bin | head

# EXERCICE 14
cat zola_curee.txt | grep '^[aA]' | wc -l
