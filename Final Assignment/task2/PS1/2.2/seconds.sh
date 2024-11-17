#!/bin/bash

time=14400

for ((i = 0; i <= $time; i++))
do
    Bytes=0
    cat data_uni.txt | awk 'NR>1'| while read bytes start end
    do
        if [[ $start > $i && $start < $i+1 ]] || [[ $end > $i && $end < $i+1 ]] || [[ $start < $i && $end > $i+1 ]]
        then
            Bytes=$[Bytes+$bytes]
        fi
        if [[ $start > $i+1 ]]
        then
            echo $Bytes >> seconds.csv
            break
        fi
    done
done
