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
	--error|-e)
		if [ -z "$2" ]; then
			num=100
		else
			num=$2
		fi
		mkdir -p errors
		for ((i=1; i<=num; i++))
		do
			filename="errors/error$i.txt"
			echo "File: $filename, Created by: $0, Date: $(date)" > $filename
		done
		;;
	--init)
		git clone https://github.com/Rolas215/Narzedzia_w_branzy_IT.git
		export PATH=$PATH:$(pwd)/Narzedzia_w_branzy_IT.git
		;;
	--help|-h)
		echo "Usage: skrypt.sh [OPTION]"
		echo "--date, -d		Display today's date."
		echo "--logs, -l [num]		Create log files (default 100)."
		echo "--error, -e [num]		Create error files (default 100)."
		echo "--init			Clone repo and set PATH."
		echo "--help, -h		Display this help message."
		;;
	*)
		echo "Invalid option. Use --help or -h for help."
		;;
esac
