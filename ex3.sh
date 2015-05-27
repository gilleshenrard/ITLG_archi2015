#! /bin/bash

#question 1
date --rfc-3339="date"

#question 2
date --rfc-3339="date" --date="1 year ago"

#question 3
last -R gilles | tr -s ' ' | cut -d' ' -f 4,5 | head -n -2 | uniq
