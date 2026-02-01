{{ config(materialized='table') }}

select
    rider_id,
    city,
    vehicle_type,
    rider_status
from {{ ref('rider_snapshot') }}
where dbt_valid_to is null