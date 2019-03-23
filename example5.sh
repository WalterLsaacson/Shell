#! /bin/bash
set -o errexit
hput(){
	eval "hkey_$1"="$2"
}
hget(){
	eval echo '${'"hkey_$1"'}'
}
hput k1 v1
hget k1

declare -A dic
dic=([key1]="value1" [key2]="value2" [key3]="value3")
echo ${dic["key1"]}

# output all key  
echo ${!dic[*]}  
#outpull all value  
echo ${dic[*]}

# access all
for key in $(echo ${!dic[*]})
do
	echo "$key : ${dic[$key]}"
done
