#!/bin/sh

#Starts self-test
smartctl --scan | cut -f1 -d" " | while read -r line; do
        smartctl -q silent -t short $line;done
