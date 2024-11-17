#!/bin/sh
export LANG=C
tshark -n -r ${1:-capture.pcap} -Y icmp.code==0 \
  -T fields -E header=y -E separator=, -E occurrence=f \
  -e frame.time_epoch -e ip.src -e ip.dst -e icmp.type \
  -e icmp.ident -e icmp.seq -e ip.len -e ip.hdr_len -e icmp.resptime
