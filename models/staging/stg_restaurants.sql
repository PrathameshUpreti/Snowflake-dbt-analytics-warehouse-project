{{ config(materialized='view') }}

select
    restaurant_id,
    trim(name)   as restaurant_name,
    initcap(city)   as city,
    initcap(cuisine)  as cuisine,
    rating::float  as rating
from {{ source('raw','restaurants') }}
