{{ config(materialized='table') }}
select
    customer_id,
    email,
    city,
    age,
    signup_date
from {{ ref('customers_snapshot') }}
where dbt_valid_to is null
