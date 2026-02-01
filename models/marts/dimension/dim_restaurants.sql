{{ config(materialized='table') }}

select
    restaurant_id,
    restaurant_name,
    city,
    cuisine,
    rating
from {{ ref('restaurants_snapshot')}}
where dbt_valid_to is null