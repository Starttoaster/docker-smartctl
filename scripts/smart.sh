#!/bin/bash

#Shows S.M.A.R.T. attributes and test results.
ls /dev/sd* | sed 's/[0-9]//g' | sort -u | while read -r line; do
        echo -e "\n============= $line ============="
        smartctl -a /dev/sda | grep "ID#\|Raw_Read\|Power_On\|Power_Cycle\|Reallocated\|Timeout\|Media_Wearout\|CurrentPending\|Uncorrectable\|Test_Description\|# 1";done
