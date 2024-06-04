#!/bin/bash

case $1 in
	--date)
		echo "Today's date is: $(date)"
		;;
	--logs)
		if [ -z "$2" ]; then
			num=100
		else
			num=$2
		fi
		for ((i=1; i<=num; i++))
		do
			filename="log$i.txt"
			echo "File: $filename, Created by: $0, Date: $(date)" > $filename
		done
		;;
	*)
		echo "Invalid option. Use --help or -h for help."
		;;
esac
