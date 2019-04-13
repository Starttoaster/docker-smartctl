#!/bin/bash

#Starts self-test
ls /dev/sd* | sed 's/[0-9]//g' | sort -u | while read -r line; do
        smartctl -t short $line | grep "failed";done
