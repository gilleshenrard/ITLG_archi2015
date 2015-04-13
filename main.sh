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
sort -g listfile
#parties 2 et 3
cut -d/ -f2 listfile | sort -r -o listfile

# EXERCICE 7
find /etc -maxdepth 1 -type f 2> /dev/null | wc -l

# EXERCICE 8
find /etc -maxdepth 1 -type d 2> /dev/null | wc -l

# EXERCICE 9
ls -R > files

# EXERCICE 10
ls -lR ~ > liste

# EXERCICE 11
find ./* -type l

# EXERCICE 12
cp /usr/share/man/man1/ls.1.gz /tmp; gunzip /tmp/ls.1.gz
grep -i "file" /tmp/ls.1 | wc -l
rm /tmp/ls.1

# EXERCICE 13
ls -lhS /usr/bin | head

# EXERCICE 14
grep '^[aA]' zola_curee.txt | wc -l

# EXERCICE 15
grep '[1-9]' zola_curee.txt | wc -l

# EXERCICE 16
grep '[^.,;:/?!]$' zola_curee.txt | wc -l

# EXERCICE 17
grep '^.r' zola_curee.txt | wc -w

# EXERCICE 18
grep '[A-Z|a-z]r' zola_curee.txt | wc -w
