# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import matplotlib
import math


def bubbleSort(arr, grp0):
    n = len(arr)
 
    # 遍历所有数组元素
    for i in range(n):
        # Last i elements are already in place
        for j in range(0, n-i-1):
            if arr[j] < arr[j+1] :
                arr[j], arr[j+1] = arr[j+1], arr[j]
                grp0[j], grp0[j+1] = grp0[j+1], grp0[j]
    return grp0
'''
data = pd.read_csv('/u/88/pengh1/unix/Desktop/Assignment3/Task1/data/top100flow.csv')
grp= data.groupby(['src','dst'])#make pairs of the hosts
grp = list(grp)[3:-1]#convert into list
pairs=[len(grp[i][1]) for i in range(len(grp))]
grp0=bubbleSort(pairs, grp)#sort based on the number of flows
top = [len(grp[i][1]) for i in range(len(grp))]
#print('flows of top 100 most common pairs:', top[0:100])



plt.bar([x for x in range (100)], top[0:100])
plt.xlabel("top 100 most common pairs")
plt.ylabel("number of flows")
plt.title('number of flows of top 100 most common pairs in linear scale')
plt.show()


toplog = [math.log(x) for x in top]

plt.bar([x for x in range (100)], toplog[0:100])
plt.xlabel("top 100 most common pairs")
plt.ylabel("ln(number of flows)")
plt.title('number of flows of top 100 most common pairs in logarithmic scale')
plt.show()
'''

#toplog0 = [math.log(x, 10) for x in top]
plt.hist(top[:100], bins=20, log=0, histtype='bar', rwidth=0.8)
plt.xlabel("number of flows")
plt.ylabel("number of pairs")
plt.title('number of flows of top 100 most common pairs in time fixed size array')
plt.show()






