#! /bin/bash
if [[ $# -lt 1 ]]; then
	echo "args count must > 1"
	echo "Usage: bash +x example3.sh [args...]"
	exit
fi
case $1 in
	"install" )
		echo "operation type is install"
	;;
	"uninstall" )
		echo "operation type is uninstall"
	;;
	* )
		echo "operation type is not support"
	;;
esac
for ((i=0;i<3;i++))
do 
	if ((i==1))
	then
		continue
	fi
	echo $i
done
for i in ` seq 5 `
do
	echo "loop $i"
done
