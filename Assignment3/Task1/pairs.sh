#!/bin/sh

cat flowdata.txt | awk '$1<$2{print $1,$2;next}{print $2,$1;}' | sort | uniq -c | sort -r -n > topflows.cnt
