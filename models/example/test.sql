select * 
from {{ source('demo', 'bike_data') }}

limit 10