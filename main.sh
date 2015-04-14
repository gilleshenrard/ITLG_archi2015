#! /bin/bash

#
#	Exercices sur l'archivage
#

# EXERCICE 1
#	partie 1
sudo cp -r /etc ~/etc
tar -cvf ~/etc.tar ~/etc
split -b 100000 ~/etc.tar etc
#	partie 2
cat etc* > ~/etc.tar
rm etc*
