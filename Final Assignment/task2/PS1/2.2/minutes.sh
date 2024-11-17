#!/bin/bash

time=2400

for ((i = 0; i <= $time; i++))
do
    Bytes=0
    cat data_uni.txt | awk 'NR>1'| while read bytes start end
    do
        if [[ $start > $i && $start < $i+60 ]] || [[ $end > $i && $end < $i+60 ]] || [[ $start < $i && $end > $i+60 ]]
        then
            Bytes=$[Bytes+$bytes]
        fi
        if [[ $start > $i+60 ]]
        then
            echo $Bytes >> minutes.csv
            break
        fi
    done
done
