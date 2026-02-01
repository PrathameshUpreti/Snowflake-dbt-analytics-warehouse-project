select
    r.rider_id,
    count(*) as deliveries,
    sum(o.amount) as revenue_generated
from {{ ref('fact_orders') }} o
join {{ ref('dim_riders') }} r
  on o.rider_id = r.rider_id
group by r.rider_id
