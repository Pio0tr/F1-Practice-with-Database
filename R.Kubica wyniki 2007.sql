#Zapytanie pokazuje wyniki Roberta Kubicy (pozycja + punkty) w sezonie 2007. Rozbijając wyniki na każdy wyścig.
#W wynikach rundy 7, gdyż Robert po wypadku w Kanadzie z przyczyn medycznych nie brał udziału w GP USA.

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

#subquery i dwa joiny