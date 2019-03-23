#! /bin/bash
if [[ $# -lt 1 ]]; then 
	echo "arg count must > 1"
	echo "Usage: bash +x example1.sh [args...]"
	exit
fi
arg=$1
if [[ $arg -gt 10 ]]; then
	echo "$arg > 10"
else
	echo "$arg < 10"
fi
