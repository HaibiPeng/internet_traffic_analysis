import sys
import GeoIP
gi = GeoIP.new(GeoIP.GEOIP_MEMORY_CACHE)
for n in sys.argv[1:]:
  print("%s %s" % (n, gi.country_code_by_addr(n)))
