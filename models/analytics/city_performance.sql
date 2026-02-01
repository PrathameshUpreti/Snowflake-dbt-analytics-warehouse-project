select
    c.city,
    count(*) as orders,
    sum(o.amount) as revenue
from {{ ref('fact_orders') }} o
join {{ ref('dim_customers') }} c
  on o.customer_id = c.customer_id
group by c.city
