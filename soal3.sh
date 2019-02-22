#!/bin/bash

loop=1
num=1
while [ $loop -ne 0 ]
do
	if [[ -f /home/andhika/shift1_no3/password$num.txt ]] ; then
	    num=$((num + 1))
	else
	cat /dev/urandom | tr -dc '[a-z][A-Z][0-9]' | fold -w 12 | head -n 1 > /home/andhika/shift1_no3/password$num.txt
	#https://www.unix.com/solaris-bigadmin-rss/128078-cat-dev-urandom-tr-dc-z-z-0-9-_-_-fold-w-10-head-n-5-a.htmls
	loop=0
	fi
done
