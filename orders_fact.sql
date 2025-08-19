select
  o.order_id,
  o.order_date,
  o.customer_id,
  count(distinct o.order_id) as ordercount,
  sum(oi.total_price) as revenue
from
  {{ ref('orders_stg') }} o
join
  {{ ref('orderitems_stg') }} oi on o.order_id = oi.order_id
group by
  o.order_id,
  o.order_date,
  o.customer_id
order by
  ordercount,
  revenue 
  desc
