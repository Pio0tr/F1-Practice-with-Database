select  
	concat(forename, ' ',surname) 	as 'Driver'
	,ra.name 						as 'Name_race'
	,(select year from seasons where year = 2007) as 'Sezon'
	,ra.round 						as 'Runda'
	,r.`position`  					as 'Pozycja'
	,r.points 						as 'Punkty'
from results r
inner join drivers dr on r.driverId = dr.driverId 
inner join races ra on r.raceId = ra.raceId
where r.driverId = 9 and year = 2007 #Id Kubicy: 9
