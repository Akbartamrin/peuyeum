import sys
sys.path.append('../../')
from lib.cilok import urlEncode16,tokenuri,setTTL,keyuri
from lib.sampeu import getWMTS
from apps.models import calendar
from apps.templates import batik

class Controller(object):
	def home(self,uridt='null'):
		provinsi = 'kaltim'
		provloc = '116.365086, 0.659612'
		mapzoom = '9'
		kabkotcord = [
		'115.944746, -1.714400',
		'115.843966, -0.402557',
		'116.609979, -0.143989',
		'116.609979, 0.930410',
		'117.357600, 2.035446',
		'116.513376, -1.297642',
		'114.71429179999996, 0.9616678000000001',
		'116.8528526, -1.2379274',
		'117.14361540000004, -0.4948232',
		'117.48004450000008, 0.120863'
		]
		listkabkot = [
		'%6401%','%6402%','%6403%','%6404%','%6405%','%6409%'
		'%6411%',
		'%6471%','%6472%','%6474%'
		]
		batik.provinsi(provinsi,listkabkot,provloc,mapzoom,kabkotcord)
		cal = calendar.Calendar()
		dt = {}
		for kabkot in listkabkot:
			dt[kabkot]=cal.getYearCountKabKot(str(int(kabkot[1:3])),str(int(kabkot[3:5])),uridt)
		cal.close()
		dt['%WMTS%']=getWMTS()
		dt['%PERIODE%']=uridt
		dt['%LAMAN INDONESIA%']=urlEncode16(keyuri+'%peta%home'+'%'+uridt)
		dt['%TAHUN SEBELUMNYA%']=urlEncode16(keyuri+'%'+provinsi+'%home'+'%'+str(int(uridt)-1))
		dt['%TAHUN SETELAHNYA%']=urlEncode16(keyuri+'%'+provinsi+'%home'+'%'+str(int(uridt)+1))
		return dt