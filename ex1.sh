#! /bin/bash

groupadd students

mkdir /home/students
chgrp students /home/students/
chmod g+rw /home/students/

for i in $(seq 1 10)
do
	echo exemple-$i >> /home/students/fichiers-$i.txt
done
chgrp students /home/students/fichiers-*
chmod g+w /home/students/fichiers-*

while read line
do
	useradd -G students $line
	for i in $(seq 1 10)
	do
		su -c "echo lu par $line >> /home/students/fichiers-$i.txt" $line
	done
done < users
