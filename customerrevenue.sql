select
  os.customer_id,
  c.full_name,
  sum(os.ordercount) as ordercount,
  sum(os.revenue) as revenue
from 
  {{ ref('orders_fact') }} os
join {{ ref('customers_stg') }} c on c.customer_id = os.customer_id
group by
  os.customer_id,
  c.full_name
