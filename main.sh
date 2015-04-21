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
sudo find /etc -maxdepth 1 -name '[a-m]*' | tar -cvf test.tar -T -
# Merci à Loïc Sarlet pour sa soluce ;)


