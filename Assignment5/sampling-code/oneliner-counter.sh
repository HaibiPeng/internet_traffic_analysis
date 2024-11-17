cat sample-flows.txt | awk '$1<$2{print $1,$2;next}{print $2,$1;}' |
sort | uniq -c | sort -r -n > sample-flows.cnt
