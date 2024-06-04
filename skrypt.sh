#!/bin/bash

case $1 in
	--date|-d)
		echo "Today's date is: $(date)"
		;;
	*)
		echo "Invalid option. Use --help or -h for help."
		;;
esac
