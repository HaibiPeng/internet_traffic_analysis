#!bin/bash

gawk '$1~/^.*\..*\..*\..*/||$1~/^.*:.*:.*:.*:.*:.*/' data0.t2 > /u/88/pengh1/unix/Desktop/FinalAssignment/Task2/PS2/data.t2
