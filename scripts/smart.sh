#!/bin/bash

#Shows S.M.A.R.T. attributes and test results.
ls /dev/sd* | sed 's/[0-9]//g' | sort -u | while read -r line; do
        echo ============= $line =============
        smartctl -a $line | grep "Raw_Read\|Power_On\|Power_Cycle\|Reallocated\|Timeout\|Media_Wearout\|CurrentPending\|Uncorrectable"
        smartctl -l selftest $line | grep "# 1";done
