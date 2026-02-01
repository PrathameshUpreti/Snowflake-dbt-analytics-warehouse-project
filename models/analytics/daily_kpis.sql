select order_date, count(*) as total_orders, sum(amount) as revenue , avg(amount) as avg_order_value

from {{ref('fact_orders')}}
group by order_date