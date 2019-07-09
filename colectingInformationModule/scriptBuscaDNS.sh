#!/bin/bash
if [ $# -lt 2 ]
then
	echo "Insert main url and txt file as augment ex: ./script www.xx.com file.txt"
	exit 1
fi

for url in $(cat $2); do host $url.$1 |grep "has";done
