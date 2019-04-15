#!/bin/sh

while true
do
	DATE=$(date +"%Y%m%d")
	./runtest.sh > /logs/$DATE.log
	sleep 125s
	./smart.sh >> /logs/$DATE.log
	sleep 86400s
done
