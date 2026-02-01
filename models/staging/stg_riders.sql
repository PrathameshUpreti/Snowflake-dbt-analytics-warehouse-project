{{ config(materialized='view') }}

select
    rider_id,
    initcap(city)  as city,
    initcap(vehicle_type)  as vehicle_type,
    lower(status)  as rider_status
from {{ source('raw','riders') }}
