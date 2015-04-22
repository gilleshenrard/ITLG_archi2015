#! /bin/bash

function affTABLE {
	for i in `seq $2 $3`; do
		let res=$i*$1
		echo "$res"
	done
}

affTABLE $1 $2 $3
