{{ config(materialized='view') }}

select
    order_id,
    customer_id,
    restaurant_id,
    rider_id,

    order_ts::timestamp    as order_ts,
    date(order_ts)         as order_date,

    amount::float    as amount,
    lower(payment_method) as payment_method,
    lower(status)   as order_status

from {{ source('raw','orders') }}
