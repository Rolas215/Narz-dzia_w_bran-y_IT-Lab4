#!/bin/bash

case $1 in
	--date|-d)
		echo "Today's date is: $(date)"
		;;
	--logs|-l)
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
	--help|-h)
		echo "Usage: skrypt.sh [OPTION]"
		echo "--date	Display today's date."
		echo "--logs	Create log files."
		echo "--help	Display this help message."
		;;
	*)
		echo "Invalid option. Use --help or -h for help."
		;;
esac
