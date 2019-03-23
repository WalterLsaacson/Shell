#! /bin/bash
if [[ $# -lt 1 ]]; then
	echo "arg error"
	exit
fi
arg=$1
if [ $arg == 20 ]; then
	echo "arg greater than 20"
else
	echo "arg litter than 20"
fi
