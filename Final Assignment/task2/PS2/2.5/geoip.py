import sys
import GeoIP
import csv
from matplotlib import pyplot as plt

gi = GeoIP.new(GeoIP.GEOIP_MEMORY_CACHE)


ip=[]
with open('./ip.csv', 'r') as f:
    reader = csv.reader(f)
    for i in reader:
        ip.append(i[0])

#print(ip)
countries = []
#print(gi.country_code_by_addr(ip[1]))
for n in ip:
  #print("%s %s" % (n, gi.country_code_by_addr(n)))
  #print(gi.country_code_by_addr(n))
  countries.append(gi.country_code_by_addr(n))

#print(countries)
  
plt.gcf().set_size_inches(10, 6)
plt.title("Flow distribution by countries") 
plt.xlabel("countries") 
plt.ylabel("Flows") 
plt.hist(x = countries, log = 1, color = 'steelblue')