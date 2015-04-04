#! /bin/bash

#
#	Atelier - exercices sur le chapitre 8
#

# EXERCICE 1
cut -d ':' -f 1 /etc/passwd > /tmp/out2 ; sort -o /tmp/out /tmp/out2
rm /tmp/out2

# EXERCICE 2
ls -l /usr/bin > /tmp/out ; wc -l /tmp/out
rm /tmp/out

# EXERCICE 3
find /usr/share/doc -name '*.gz' > /tmp/found ; wc -l /tmp/found
rm /tmp/found

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
cut -d '/' -f 2 test > /tmp/test ; sort -r -o test /tmp/test

# EXERCICE 7
find /etc -type f > /tmp/out ; wc -l /tmp/out
rm /tmp/out
