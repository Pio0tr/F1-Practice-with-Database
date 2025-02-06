with wyniki as
	(select
		r.`position` 	as pozycja
		,r.points 		as punkty
		,r.driverId
		,r.raceId
	from results r 
	where raceId = 278
	),
kierowcy as 	
	(select
		d.forename 		as imie
		,d.surname 		as nazwisko
		,d.driverId
	from results r 
	inner join drivers d on r.driverId =d.driverId
	where raceId = 278
	),
wyscig as 
	(
	select 
		r.name as tor
		,r.raceId
	from races r 
	where raceId = 278
	),
rok as 
(
	select
		year as rok_wyscigu
	from races
	where raceId = 278
)
select
	wy.pozycja
	,wy.punkty
	,ki.imie
	,ki.nazwisko
	,ra.tor
	,ry.rok_wyscigu
from wyniki wy
join kierowcy ki on wy.driverId = ki.driverId
join wyscig ra on ra.raceId = wy.raceId
join rok ry on 1=1
