#! /bin/bash

function affTABLE {
	for i in `seq 1 10`; do
		let res=$i*$1
		echo "$res"
	done
}

affTABLE $1
