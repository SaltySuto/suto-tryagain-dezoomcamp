--3
select count(1) from public.green_taxi_trips where lpep_pickup_datetime::date = '2019-01-15';
--20689

--4
select lpep_pickup_datetime::date,max(trip_distance) 
from public.green_taxi_trips 
group by lpep_pickup_datetime::date
order by max(trip_distance) desc;

--"2019-01-15"	117.99

--5
select passenger_count,count(1) from public.green_taxi_trips where lpep_pickup_datetime::date = '2019-01-01' group by passenger_count;

2	1282
3	254

--6
select "DOLocationID",max(tip_amount) 
from public.green_taxi_trips 
where "PULocationID" = 7
group by "DOLocationID"
order by max(tip_amount) desc;

--146,"Queens","Long Island City/Queens Plaza","Boro Zone"