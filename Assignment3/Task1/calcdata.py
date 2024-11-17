#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Sat Oct  3 17:20:39 2020

@author: pengh1
"""

import re
import os
import csv
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

def caldata(datafile, datakind):
    with open(datafile, 'r') as f:
        rawdata = csv.reader(f)
        data=[]
        for i in rawdata:
            i = i[0].split('\t')
            if i[0]=='#src':
                continue
            else:

                if datakind == 'bytes':
                    data.append(int(i[7]))
                else:
                    data.append(int(i[6]))
            #data=data[1:]
    dt=sorted(data)
    med=dt[len(dt)/2]
    mean=sum(data)/len(data)
    Max=max(data)
    Min=min(data)
    results=[Min, med, mean, Max]
    return results
'''
bytesresults=caldata('/u/88/pengh1/unix/Desktop/Assignment3/Task1/data/flowdata.csv', 'bytes')
packetsresults=caldata('/u/88/pengh1/unix/Desktop/Assignment3/Task1/data/flowdata.csv', 'packets')

print(bytesresults)
print(packetsresults)
'''
'''
datakind=['bytes', 'packets']

calname=['Minimum', 'Median', 'Mean', 'Maximum']

calresults=[bytesresults, packetsresults]

data = dict(zip(datakind, calresults))
dataframe = pd.DataFrame(data,index = calname)
dataframe.to_csv(r'/u/88/pengh1/unix/Desktop/Assignment3/Task1/results.csv',columns = datakind)
'''


 





