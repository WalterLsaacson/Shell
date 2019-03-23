#! /bin/bash
if [[ $# -lt 1 ]]; then
	echo "args count must > 1"
	echo "Usage: bash +x example2.sh [args...]"
	exit
fi
args=$@
for arg in $args;do
	echo $arg
done
function fun(){
	echo $1
}
fun "hello shell"
fun2(){
	echo "Linux shell"
}
fun2
