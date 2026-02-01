{{ config(materialized='view') }}

select
    customer_id,
    lower(trim(email)) as email,
    initcap(city) as city,
    age,
    signup_date::date  as signup_date
from {{ source('raw','customers') }}