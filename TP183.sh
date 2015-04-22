#! /bin/bash

final=$1

function calc {
	case $1 in
		"+") let final=$final+$2;;
		"-") let final=$final-$2;;
		"*") let final=$final*$3;;
		"/") let final=$final/$4;;
		*) echo "mauvaise operande";;
	esac
}

op="0"
until [ $op == "=" ]; do
	read next
	let op=`cut -d' ' $next`
	echo "$op"
done
