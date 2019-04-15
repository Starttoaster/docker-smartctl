#!/bin/sh

#Shows S.M.A.R.T. attributes and test results.
smartctl --scan | cut -f1 -d" " | while read -r line; do
        echo -e "\n============= $line ============="
        smartctl -a $line | grep "ID#\|Raw_Read\|Power_On\|Power_Cycle\|Reallocated\|Timeout\|Media_Wearout\|CurrentPending\|Uncorrectable\|Test_Description\|# 1";done
