#! /bin/bash

#
#	Exercices sur l'archivage
#

# EXERCICE 1
#	partie 1
sudo cp -r /etc ~ ; tar -cvf ~/etc.tar ~/etc
split -b 100K ~/etc.tar etc
#	partie 2
cat etc* > ~/etc.tar
rm etc*

#EXERCICE 2
find /etc -regex '^[a-m]' | tar -cvf etc1.tar -T -
