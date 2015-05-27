#! /bin/bash

weekago=$(date -d "1 week ago" +"%Y%m%d")

#sauvegarde des derniers logs
#retrait de reboot
#retrait des espaces parasites
#sauvegarde de seulement le nom, le jour et le mois
#retrait des deux dernières lignes du log (celles qui font chier, la)
#retrait des doublons
#enregistrement dans /tmp/logs
last -R | grep -v reboot | tr -s ' ' | cut -d' ' -f 1,4,5 | head -n -2 | sort -u -t' ' -k1,2 > /tmp/logs

while read user month day
do
	lastlogin=$(date -d "$month $day" +"%Y%m%d")
	if [ $lastlogin -le $weekago ]; then
		tar -czvf "/home/$user/" "/home/$user.tar.gz"
	fi
done < /tmp/logs

rm /tmp/logs
