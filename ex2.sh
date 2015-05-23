#! /bin/bash

#question 1
sort telephone.txt

#question 2
wc -l telephone.txt
#ou cat telephone.txt | wc -l si on ne veut pas le nom du fichier

#question 3
grep -i "dupond" telephone.txt

#question 4
grep -m 1 -i "dupond" telephone.txt | cut -f 3
