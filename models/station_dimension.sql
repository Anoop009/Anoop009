with bike as 
(
select distinct
start_station_id,
start_station_name,
start_lat,
start_lng
from {{ source('demo', 'bike_data') }}
)

select *
from bike