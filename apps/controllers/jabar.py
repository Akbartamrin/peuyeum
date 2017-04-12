import sys
sys.path.append('../../')
from lib.cilok import urlEncode16,tokenuri,setTTL,keyuri
from lib.sampeu import getWMTS
from apps.models import calendar
from apps.templates import batik

class Controller(object):
	def home(self,uridt='null'):
		provinsi = 'jabar'
		provloc = '107.642704, -7.095541'
		mapzoom = '9'
		kabkotcord = [
		'106.797564, -6.587579',
		'106.926064, -6.938205',
		'107.124728, -7.077573',
		'107.646049, -7.071566',
		'107.813805, -7.303740',
		'108.223480, -7.370463',
		'108.333012, -7.327543',
		'108.594609, -7.045500',
		'108.578243, -6.736305',
		'108.362311, -6.800160',
		'107.951509, -6.807383',
		'108.146650, -6.436696',
		'107.726287, -6.439268',
		'107.504658, -6.568864',
		'107.477713, -6.275045',
		'106.975437, -6.270206',
		'107.392381, -6.861554',
		'108.648994,-7.683989',
		'106.801845, -6.596894',
		'106.930870, -6.928151',
		'107.625645, -6.918441',
		'108.553695 , -6.732468',
		'106.976111,  -6.240155',
		'106.798568, -6.401832',
		'107.541465,-6.884127',
		'108.221763, -7.341521', #rf
		'108.534659, -7.371715',
		'107.268667, -6.759950'#88
		]
		listkabkot = [
		'%3201%','%3202%','%3203%','%3204%','%3205%','%3206%','%3207%','%3208%','%3209%','%3210%',
		'%3211%','%3212%','%3213%','%3214%','%3215%','%3216%','%3217%','%3218%'
		'%3271%','%3272%','%3273%','%3274%','%3275%','%3276%','%3277%','%3278%','%3279%','%3288%'
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