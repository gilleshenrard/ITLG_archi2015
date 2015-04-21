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

# EXERCICE 2
find /etc -maxdepth 1 -name "[a-m]*" | tar -cvf etc1.tar -T -
find /etc -maxdepth 1 -name "[n-z]*" | tar -cvf etc2.tar -T -
# Merci à Loïc Sarlet pour sa soluce ;)

# EXERCICE 3
find /etc -maxdepth 1 -name "*.d" | tar -cvf etc.d.tar -T -
find /etc -maxdepth 1 -not -name "*.d" | tar -cvf other.tar -T -
