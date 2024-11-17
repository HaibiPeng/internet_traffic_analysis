$ crl_to_pcap -r "[" pcap/*.pcap "]" |
crl_flow -Ci=3600 -Cai=1 -Tf60 -O flow-continue/%V-%u-%H%M.t2 pcap:-
