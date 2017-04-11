import sys
sys.path.append('../../')
from lib.cilok import urlEncode16,tokenuri,setTTL,keyuri
from lib.sampeu import getWMTS
from apps.models import calendar
from apps.templates import batik

class Controller(object):
	def home(self,uridt='null'):
		provinsi = 'babel'
		listkabkot = [
		'%1901%','%1902%','%1903%','%1904%','%1905%','%1906%',
		'%1971%'
		]
		provloc = '106.400525, -2.755146'
		mapzoom = '9'
		kabkotcord = [
		'105.949875, -1.901237',
		'106.885438, -2.976806',
		'105.486902, -1.888498',
		'106.096804, -2.431430',
		'106.323839, -2.760374',
		'108.106855, -2.883306',
		'106.112973, -2.126287'
		]
		batik.provinsi(provinsi,listkabkot,provloc,mapzoom,kabkotcord)
		cal = calendar.Calendar()
		dt = {}
		for kabkot in listkabkot:
			dt[kabkot]=cal.getYearCountKabKot(str(int(kabkot[1:3])),str(int(kabkot[3:5])),uridt)
		dt['%WMTS%']=getWMTS()
		dt['%PERIODE%']=uridt
		dt['%LAMAN INDONESIA%']=urlEncode16(keyuri+'%peta%home'+'%'+uridt)
		dt['%TAHUN SEBELUMNYA%']=urlEncode16(keyuri+'%'+provinsi+'%home'+'%'+str(int(uridt)-1))
		dt['%TAHUN SETELAHNYA%']=urlEncode16(keyuri+'%'+provinsi+'%home'+'%'+str(int(uridt)+1))
		cal.close()
		return dt