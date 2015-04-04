#! /bin/bash

#
#	Atelier - exercices sur le chapitre 8
#

# EXERCICE 1
cut -d ':' -f 1 /etc/passwd > /tmp/out2 ; sort /tmp/out2 > /tmp/out
rm /tmp/out2

# EXERCICE 2
ls -l /usr/bin > /tmp/out ; wc -l /tmp/out
rm /tmp/out

# EXERCICE 3
find /usr/share/doc -name '*.gz' > /tmp/found ; wc -l /tmp/found
rm /tmp/found

# EXERCICE 4
ps -eo euser,comm | grep $1
