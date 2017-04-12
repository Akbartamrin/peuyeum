import sys
sys.path.append('../../')
from lib.cilok import urlEncode16,tokenuri,setTTL,keyuri
from lib.sampeu import getWMTS
from apps.models import calendar
from apps.templates import batik

class Controller(object):
	def home(self,uridt='null'):
		kabkotcord = [
		'111.105904, -8.180052',
		'111.459364, -7.938566',
		'111.592798, -8.157817',
		'111.955060, -8.090436',
		'112.166403, -8.094802',
		'112.016871, -7.846838',
		'112.639219, -7.971031',
		'113.227336, -8.134823',
		'113.664399, -8.200297',
		'114.317427, -8.220783',
		'113.823270, -7.918907',
		'113.995393, -7.705290',
		'113.203210, -7.771583',
		'112.897102, -7.647793',
		'112.703775, -7.449440',
		'112.426074, -7.467508',
		'112.149996, -7.429659',
		'111.888159, -7.604162',
		'111.52908, -7.630911',
		'111.319225, -7.654009',
		'111.422236, -7.407891',
		'111.778154, -7.147364',
		'112.044289, -6.892517',
		'112.422279, -7.113414',
		'112.651392, -7.165772', 
		'112.75679, -7.026468',#
		'113.246.039,-7.191.250',#27
		'113.472.624, -7.155.325',#28
		'113.878849, -7.020012',#29
		'112.017.472, -7.847.858',#71 
		'112.160.449, -8.095.844',#72
		'112.629.720, -7.967.759',#73
		'113.201292, -7.776733',#74#
		'112.899773, -7.646969',#75#
		'112.436.484, -7.470.808',#76#
		'111.530797, -7.630911',
		'112.752537, -7.254862',
		'112.53329, -7.882909'
		]
		listkabkot = [
		'%3501%','%3502%','%3503%','%3504%','%3505%','%3506%','%3507%','%3508%','%3509%','%3510%',
		'%3511%','%3512%','%3513%','%3514%','%3515%','%3516%','%3517%','%3518%','%3519%','%3520%',
		'%3521%','%3522%','%3523%','%3524%','%3525%','%3526%','%3527%','%3528%','%3529%',
		'%3571%','%3572%','%3573%','%3574%','%3575%','%3576%','%3577%','%3578%','%3579%'
		]
		provinsi = 'jatim'
		provloc = '112.216855, -7.527042'
		mapzoom = '9'
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