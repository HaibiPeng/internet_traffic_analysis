#!/bin/bash

function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(date +%s%N)
    echo $(($num%$max+$min))
}

port=$(rand 5200 5210)

d=$(date -Isec | tr -d : | sed s/+.*//)

ping -c 10 ok1.iperf.comnet-student.eu -O -D>> /home/parallels/Desktop/Assignment3/Task2/Data2/iperfserver1/ICMP/is1-icpm-$d.txt &
ping -c 10 blr1.iperf.comnet-student.eu -O -D>> //home/parallels/Desktop/Assignment3/Task2/Data2/iperfserver2/ICMP/is2-icpm-$d.txt &
ping -c 10 pna-es.ark.caida.org -O -D >> /home/parallels/Desktop/Assignment3/Task2/Data2/researchserver1/rs1-icpm-$d.txt &
ping -c 10 per-au.ark.caida.org -O -D >> /home/parallels/Desktop/Assignment3/Task2/Data2/researchserver2/rs2-icpm-$d.txt &
ping -c 10 cjj-kr.ark.caida.org -O -D >> /home/parallels/Desktop/Assignment3/Task2/Data2/researchserver3/rs3-icpm-$d.txt &
iperf3 -c ok1.iperf.comnet-student.eu -t 10 -p $port  >> /home/parallels/Desktop/Assignment3/Task2/Data2/iperfserver1/iperf/iperf-s-$d.txt &
iperf3 -c blr1.iperf.comnet-student.eu -t 10 -p $port  >> /home/parallels/Desktop/Assignment3/Task2/Data2/iperfserver2/iperf/iperf-s-$d.txt
