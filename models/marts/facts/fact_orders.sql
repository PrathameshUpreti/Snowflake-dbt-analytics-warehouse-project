{{ config(materialized='incremental',
    unique_key='order_id')
}}

select
    o.order_id,
    o.order_date,
    o.amount,
    o.order_status,
    o.payment_method,

    -- foreign keys
    o.customer_id,
    o.restaurant_id,
    o.rider_id,

    -- denormalized business columns
    c.city              as customer_city,
    r.cuisine           as cuisine,
    rd.vehicle_type     as rider_vehicle

from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c using(customer_id)
left join {{ ref('stg_restaurants') }} r using(restaurant_id)
left join {{ ref('stg_riders') }} rd using(rider_id)


{% if is_incremental() %}

where o.order_ts > (select max(order_date) from {{this }})

{% endif %}
